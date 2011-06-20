spec = Gem::Specification.new do |s|
  s.name = 'oai_talia'
  s.version = '0.0.17'
  s.authors = ['Ed Summers', 'Daniel Hahn', 'Josyan Pierson']
  s.email = 'josyan@demarque.com'
  s.homepage = 'http://github.com/josyan/ruby-oai-talia'
  s.summary = 'A ruby library for working with the Open Archive Initiative Protocol for Metadata Harvesting (OAI-PMH)'
  s.description = 'Version customised for my needs in Gallica project.'

  s.files = Dir.glob("{bin,lib,examples,test,tools}/**/*") + %w(Changes Rakefile README VERSION.yml)
  s.bindir = 'bin'
  s.executables = ['oai']
  s.require_path = 'lib'
end
