# -*- encoding: utf-8 -*-
#
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby_certisign_login/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby_certisign_login"
  spec.version       = RubyCertisignLogin::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Danilo Josino"]
  spec.email         = ["danilo@josino.com.br"]

  spec.summary       = "Versão em ruby para autenticação via CertiSignLogin."
  spec.description   = "A Gem possui um helper para gerar o formulario que envia o request de certificados a CertiSign e uma rotina para descriptografar o retorno recebido da CertiSign."
  spec.homepage      = "http://www.mondriantecnologia.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = "*"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         =  Dir['{app,lib}/**/*'] + Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'railties', '>= 5.0'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
