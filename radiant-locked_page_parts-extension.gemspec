# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-locked_page_parts-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-locked_page_parts-extension"
  s.version     = RadiantLockedPagePartsExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantLockedPagePartsExtension::AUTHORS
  s.email       = RadiantLockedPagePartsExtension::EMAIL
  s.homepage    = RadiantLockedPagePartsExtension::URL
  s.summary     = RadiantLockedPagePartsExtension::SUMMARY
  s.description = RadiantLockedPagePartsExtension::DESCRIPTION

  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  # s.executables   = Dir['bin/*'] - ignores
  s.require_paths = ["lib"]
end
