# -*- encoding: utf-8 -*-
# stub: active_shipping 1.14.2 ruby lib

Gem::Specification.new do |s|
  s.name = "active_shipping".freeze
  s.version = "1.14.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Shopify".freeze]
  s.date = "2017-05-17"
  s.description = "Get rates and tracking info from various shipping carriers. Extracted from Shopify.".freeze
  s.email = ["integrations-team@shopify.com".freeze]
  s.homepage = "http://github.com/shopify/active_shipping".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Simple shipping abstraction library".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<quantified>.freeze, ["~> 1.0.1"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.2.0", ">= 3.2"])
      s.add_runtime_dependency(%q<active_utils>.freeze, ["~> 3.3.1"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.6.8"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 1"])
      s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
      s.add_development_dependency(%q<business_time>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    else
      s.add_dependency(%q<quantified>.freeze, ["~> 1.0.1"])
      s.add_dependency(%q<activesupport>.freeze, ["< 5.2.0", ">= 3.2"])
      s.add_dependency(%q<active_utils>.freeze, ["~> 3.3.1"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 1.6.8"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, ["~> 1"])
      s.add_dependency(%q<timecop>.freeze, [">= 0"])
      s.add_dependency(%q<business_time>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<quantified>.freeze, ["~> 1.0.1"])
    s.add_dependency(%q<activesupport>.freeze, ["< 5.2.0", ">= 3.2"])
    s.add_dependency(%q<active_utils>.freeze, ["~> 3.3.1"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.6.8"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, ["~> 1"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_dependency(%q<business_time>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
