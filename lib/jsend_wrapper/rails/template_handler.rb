# jsend_wrapper-rails: Wrap JSON views in JSend containers
# Copyright (C) 2014 Jon Sangster
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
module JsendWrapper
  module Rails
    class TemplateHandler
      # For Rails < 6
      def self.call(template)
        call(template, nil)
      end

      def self.call(template, source)
        json_handler = ActionView::Template.registered_template_handler :jbuilder
        json = if ::Rails::VERSION::MAJOR >= 6
                 json_handler.call template, source
               else
                 json_handler.call template
               end

        <<-RUBY
          content = instance_eval #{json.inspect}
          JsendWrapper::Rails::TemplateHandler.new(self).render content
        RUBY
      end


      #@param view [ActiveView::Base]
      def initialize(view)
        @view = view
      end


      #@param json [String]
      def render(json, *)
        json = 'null' if !json || json.empty?
        %[{"status":"success","data":#{json}}]
      end
    end
  end
end
