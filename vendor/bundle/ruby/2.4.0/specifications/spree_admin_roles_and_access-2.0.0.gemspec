# -*- encoding: utf-8 -*-
# stub: spree_admin_roles_and_access 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_admin_roles_and_access".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nishant 'CyRo' Tuteja".freeze]
  s.date = "2015-12-03"
  s.email = "info@vinsol.com".freeze
  s.homepage = "http://vinsol.com".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.requirements = ["none".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Dynamically defines roles and grants it permissions".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<spree_auth_devise>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
      s.add_development_dependency(%q<ffaker>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.1.0"])
      s.add_development_dependency(%q<shoulda-matchers>.freeze, ["~> 2.8"])
      s.add_development_dependency(%q<rspec-activemodel-mocks>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_development_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<sass-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<coffee-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<poltergeist>.freeze, [">= 0"])
      s.add_development_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<spree_core>.freeze, ["~> 3.0"])
      s.add_dependency(%q<spree_auth_devise>.freeze, [">= 0"])
      s.add_dependency(%q<capybara>.freeze, [">= 0"])
      s.add_dependency(%q<ffaker>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1.0"])
      s.add_dependency(%q<shoulda-matchers>.freeze, ["~> 2.8"])
      s.add_dependency(%q<rspec-activemodel-mocks>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
      s.add_dependency(%q<coffee-rails>.freeze, [">= 0"])
      s.add_dependency(%q<poltergeist>.freeze, [">= 0"])
      s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>.freeze, ["~> 3.0"])
    s.add_dependency(%q<spree_auth_devise>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<ffaker>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1.0"])
    s.add_dependency(%q<shoulda-matchers>.freeze, ["~> 2.8"])
    s.add_dependency(%q<rspec-activemodel-mocks>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<launchy>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_dependency(%q<coffee-rails>.freeze, [">= 0"])
    s.add_dependency(%q<poltergeist>.freeze, [">= 0"])
    s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
