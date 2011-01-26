Gem::Specification.new do |s|
  s.name = "file_uploader"
  s.version = "0.1.0"

#  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = %q{2011-01-25}
  
  s.authors = ["InSTEDD"]
  s.email = "chanmannlim@gmail.com"
  s.homepage = "https://github.com/lchanmann/file_uploader"
  s.summary = "Simple file uploader"
  s.description = "Focus more on your domain not file upload. Let file_uploader do it."
  
  s.require_paths = ["lib"]
  s.files = [
    "lib/file_uploader.rb"
  ]
  
  s.rubygems_version = %q{1.3.7}
  

#  if s.respond_to? :specification_version then
#    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
#    s.specification_version = 3

#    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
#      s.add_runtime_dependency(%q<httparty>, [">= 0"])
#    else
#      s.add_dependency(%q<httparty>, [">= 0"])
#    end
#  else
#    s.add_dependency(%q<httparty>, [">= 0"])
#  end
end

