# -*- encoding: utf-8 -*-
require File.dirname(__FILE__) + '/lib/mimemagic/version'
require 'date'

Gem::Specification.new do |s|
  s.name = 'mimemagic'
  s.version = MimeMagic::VERSION

  s.authors = ['Ilmira Shaikhraznova']
  s.date = Date.today.to_s
  s.email = ['ilmira.shaikhraynova@icloud.com']

  s.files         = `git ls-files`.split("\n")
  s.require_paths = %w(lib)

  s.rubyforge_project = s.name
  s.summary = 'Fast mime detection by extension or content'
  s.description = 'Fast mime detection by extension or content in pure ruby (Uses freedesktop.org.xml shared-mime-info database)'
  s.homepage = 'https://github.com/angry-boss/mimemagic'
  s.license = 'MIT'

  s.add_development_dependency('bacon')
  s.add_development_dependency('rake')
end
