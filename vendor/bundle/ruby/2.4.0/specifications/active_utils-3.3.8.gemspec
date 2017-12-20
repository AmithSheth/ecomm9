# -*- encoding: utf-8 -*-
# stub: active_utils 3.3.8 ruby lib

Gem::Specification.new do |s|
  s.name = "active_utils".freeze
  s.version = "3.3.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Shopify".freeze]
  s.date = "2017-08-15"
  s.email = ["developers@jadedpixel.com".freeze]
  s.homepage = "http://github.com/shopify/active_utils".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "active_utils".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Common utils used by active_merchant, active_fulfillment, and active_shipping".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.2.0", ">= 3.2"])
      s.add_runtime_dependency(%q<i18n>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, ["< 5.2.0", ">= 3.2"])
      s.add_dependency(%q<i18n>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, ["< 5.2.0", ">= 3.2"])
    s.add_dependency(%q<i18n>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
  end
end
