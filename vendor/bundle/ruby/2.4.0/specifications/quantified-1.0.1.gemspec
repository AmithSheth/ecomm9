# -*- encoding: utf-8 -*-
# stub: quantified 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "quantified".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = [["lib".freeze]]
  s.authors = ["James MacAulay".freeze, "Willem van Bergen".freeze]
  s.date = "2015-05-01"
  s.description = "Pretty quantifiable measurements which feel like ActiveSupport::Duration.".freeze
  s.email = ["james@shopify.com".freeze]
  s.homepage = "https://github.com/Shopify/quantified".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Pretty quantifiable measurements which feel like ActiveSupport::Duration.".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
  end
end
