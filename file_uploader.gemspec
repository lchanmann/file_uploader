Gem::Specification.new do |s|
  s.name = %q{file_uploader}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["InSTEDD"]
  s.date = %q{2011-01-25}
  s.description = %q{Simple file uploader for web-based application.}
  s.email = %q{chanmannlim@gmail.com}
  s.homepage = %q{http://code.google.com/p/nuntium-api-ruby}
  s.require_paths = ["lib"]
  s.files = [
    "lib/nuntium.rb"
  ]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Access the Nuntium API in ruby}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
  end
end

