# -*- encoding: utf-8 -*-
# stub: restforce 2.5.3 ruby lib

Gem::Specification.new do |s|
  s.name = "restforce".freeze
  s.version = "2.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Eric J. Holmes".freeze, "Tim Rogers".freeze]
  s.date = "2017-04-25"
  s.description = "A lightweight ruby client for the Salesforce REST API.".freeze
  s.email = ["eric@ejholmes.net".freeze, "tim@gocardless.com".freeze]
  s.homepage = "http://restforce.org/".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "2.6.8".freeze
  s.summary = "A lightweight ruby client for the Salesforce REST API.".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>.freeze, ["<= 1.0", ">= 0.9.0"])
      s.add_runtime_dependency(%q<faraday_middleware>.freeze, ["<= 1.0", ">= 0.8.8"])
      s.add_runtime_dependency(%q<json>.freeze, [">= 1.7.5"])
      s.add_runtime_dependency(%q<hashie>.freeze, ["< 4.0", ">= 1.2.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14.0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 1.13.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.7.1"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.31.0"])
      s.add_development_dependency(%q<faye>.freeze, [">= 0"])
    else
      s.add_dependency(%q<faraday>.freeze, ["<= 1.0", ">= 0.9.0"])
      s.add_dependency(%q<faraday_middleware>.freeze, ["<= 1.0", ">= 0.8.8"])
      s.add_dependency(%q<json>.freeze, [">= 1.7.5"])
      s.add_dependency(%q<hashie>.freeze, ["< 4.0", ">= 1.2.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.14.0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 1.13.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.7.1"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.31.0"])
      s.add_dependency(%q<faye>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<faraday>.freeze, ["<= 1.0", ">= 0.9.0"])
    s.add_dependency(%q<faraday_middleware>.freeze, ["<= 1.0", ">= 0.8.8"])
    s.add_dependency(%q<json>.freeze, [">= 1.7.5"])
    s.add_dependency(%q<hashie>.freeze, ["< 4.0", ">= 1.2.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.14.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 1.13.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.7.1"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.31.0"])
    s.add_dependency(%q<faye>.freeze, [">= 0"])
  end
end
