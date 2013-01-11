# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{devise_drupal_connectable}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Trautmann"]
  s.date = %q{2010-11-24}
  s.description = %q{Allow drupal to act as authentication point for devise.}
  s.email = %q{tim@foorama.com}
  s.extra_rdoc_files = ["lib/devise_drupal_connectable.rb", "lib/devise_drupal_connectable/model.rb", "lib/devise_drupal_connectable/strategy.rb"]
  s.files = ["Manifest", "Rakefile", "lib/devise_drupal_connectable.rb", "lib/devise_drupal_connectable/model.rb", "lib/devise_drupal_connectable/strategy.rb", "devise_drupal_connectable.gemspec"]
  s.homepage = %q{http://foorama.com/}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Devise_drupal_connectable"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{devise_drupal_connectable}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Allow drupal to act as authentication point for devise.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<devise>, [">= 0"])
    else
      s.add_dependency(%q<devise>, [">= 0"])
    end
  else
    s.add_dependency(%q<devise>, [">= 0"])
  end
end
