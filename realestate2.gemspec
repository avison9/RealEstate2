lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby_doc/version"

Gem::Specification.new do |spec|
  spec.name          = "RealEstate2_doc"
  spec.version       = RealEstate1Doc::VERSION
  spec.authors       = ["Avison"]
  spec.email         = ["avisonlivingstone@gmail.com"]

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ['ruby_doc']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.7', '>= 3.7.0'
#============================================================== 
  spec.add_dependency "colorize", "~>0.8.1"
  spec.add_runtime_dependency 'nokogiri', '~> 1.8.5
#==============================================================   
  # comment out before push
  spec.add_development_dependency "pry", "~>0.11.3"
#============================================================== 
end