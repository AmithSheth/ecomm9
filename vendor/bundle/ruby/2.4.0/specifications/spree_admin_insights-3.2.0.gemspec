# -*- encoding: utf-8 -*-
# stub: spree_admin_insights 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_admin_insights".freeze
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nimish Mehta".freeze, "Tanmay Sinha".freeze, "Nimish Gupta".freeze, "+ Vinsol Team".freeze]
  s.date = "2017-05-18"
  s.description = "Track what product being viewed, what being purchased. Who are consistant buyers etc.".freeze
  s.email = "info@vinsol.com".freeze
  s.homepage = "http://vinsol.com/spreecommerce-admin-insights".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.requirements = ["none".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Add some reporting to admin section.".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>.freeze, ["~> 3.2.0"])
      s.add_runtime_dependency(%q<spree_events_tracker>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<coffee-rails>.freeze, [">= 4.0.0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.2.0"])
      s.add_development_dependency(%q<factory_girl>.freeze, ["~> 4.5"])
      s.add_development_dependency(%q<ffaker>.freeze, ["~> 2.2.0"])
      s.add_development_dependency(%q<mysql2>.freeze, ["~> 0.4.0"])
      s.add_development_dependency(%q<pg>.freeze, ["~> 0.18.0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<sass-rails>.freeze, ["~> 5.0.0"])
      s.add_development_dependency(%q<chartkick>.freeze, ["~> 1.4.0"])
      s.add_development_dependency(%q<selenium-webdriver>.freeze, ["~> 2.52.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.11.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.0"])
      s.add_development_dependency(%q<shoulda-matchers>.freeze, ["~> 2.6.2"])
      s.add_development_dependency(%q<spree_backend>.freeze, ["~> 3.2.0"])
      s.add_development_dependency(%q<spree_frontend>.freeze, ["~> 3.2.0"])
      s.add_runtime_dependency(%q<wicked_pdf>.freeze, ["~> 1.0.6"])
      s.add_runtime_dependency(%q<wkhtmltopdf-binary>.freeze, ["~> 0.9.9.3"])
    else
      s.add_dependency(%q<spree_core>.freeze, ["~> 3.2.0"])
      s.add_dependency(%q<spree_events_tracker>.freeze, ["~> 3.2"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.4"])
      s.add_dependency(%q<coffee-rails>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.2.0"])
      s.add_dependency(%q<factory_girl>.freeze, ["~> 4.5"])
      s.add_dependency(%q<ffaker>.freeze, ["~> 2.2.0"])
      s.add_dependency(%q<mysql2>.freeze, ["~> 0.4.0"])
      s.add_dependency(%q<pg>.freeze, ["~> 0.18.0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
      s.add_dependency(%q<sass-rails>.freeze, ["~> 5.0.0"])
      s.add_dependency(%q<chartkick>.freeze, ["~> 1.4.0"])
      s.add_dependency(%q<selenium-webdriver>.freeze, ["~> 2.52.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.11.0"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.0"])
      s.add_dependency(%q<shoulda-matchers>.freeze, ["~> 2.6.2"])
      s.add_dependency(%q<spree_backend>.freeze, ["~> 3.2.0"])
      s.add_dependency(%q<spree_frontend>.freeze, ["~> 3.2.0"])
      s.add_dependency(%q<wicked_pdf>.freeze, ["~> 1.0.6"])
      s.add_dependency(%q<wkhtmltopdf-binary>.freeze, ["~> 0.9.9.3"])
    end
  else
    s.add_dependency(%q<spree_core>.freeze, ["~> 3.2.0"])
    s.add_dependency(%q<spree_events_tracker>.freeze, ["~> 3.2"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.4"])
    s.add_dependency(%q<coffee-rails>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<factory_girl>.freeze, ["~> 4.5"])
    s.add_dependency(%q<ffaker>.freeze, ["~> 2.2.0"])
    s.add_dependency(%q<mysql2>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<pg>.freeze, ["~> 0.18.0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
    s.add_dependency(%q<sass-rails>.freeze, ["~> 5.0.0"])
    s.add_dependency(%q<chartkick>.freeze, ["~> 1.4.0"])
    s.add_dependency(%q<selenium-webdriver>.freeze, ["~> 2.52.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.11.0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.0"])
    s.add_dependency(%q<shoulda-matchers>.freeze, ["~> 2.6.2"])
    s.add_dependency(%q<spree_backend>.freeze, ["~> 3.2.0"])
    s.add_dependency(%q<spree_frontend>.freeze, ["~> 3.2.0"])
    s.add_dependency(%q<wicked_pdf>.freeze, ["~> 1.0.6"])
    s.add_dependency(%q<wkhtmltopdf-binary>.freeze, ["~> 0.9.9.3"])
  end
end
