# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: jsend_wrapper-rails 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jsend_wrapper-rails"
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jon Sangster"]
  s.date = "2014-09-05"
  s.description = "{ \"status\": \"success\", \"data\": \"Wraps JSON views in JSend containers\" }"
  s.email = "jon@ertt.ca"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "LICENSE",
    "README.md",
    "Rakefile",
    "lib/jsend_wrapper-rails.rb",
    "lib/jsend_wrapper/rails.rb",
    "lib/jsend_wrapper/rails/railtie.rb",
    "lib/jsend_wrapper/rails/render_option.rb",
    "lib/jsend_wrapper/rails/template_handler.rb",
    "lib/jsend_wrapper/renderers.rb",
    "lib/jsend_wrapper/renderers/error_renderer.rb",
    "lib/jsend_wrapper/renderers/fail_renderer.rb",
    "lib/jsend_wrapper/renderers/renderer.rb",
    "lib/jsend_wrapper/renderers/success_renderer.rb"
  ]
  s.homepage = "http://github.com/sangster/jsend_wrapper-rails"
  s.licenses = ["GPL 3"]
  s.rubygems_version = "2.2.2"
  s.summary = "Wraps JSON in a JSend envelope"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<pry>, ["~> 0.10"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 4.2"])
    else
      s.add_dependency(%q<pry>, ["~> 0.10"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 4.2"])
    end
  else
    s.add_dependency(%q<pry>, ["~> 0.10"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 4.2"])
  end
end

