Gem::Specification.new do |s|
  s.name = 'elance'
  s.version = '0.0.1'

  s.date = '2013-05-15'
  s.summary = "Elance API"
  s.description = "A gem for utilizing the Elance API"
  s.authors = ["David Collazo", "Jonathan Jeffus"]
  s.email = 'jonathan.jeffus@towncenter.com'
  s.files = [
    "elance.gemspec",
    "GEMFILE",
    "LICENSE.txt",
    "README.md",
    "lib/elance.rb",
    "lib/elance/authentication.rb"
    "lib/elance/base.rb",
    "lib/elance/freelancer.rb",
    "lib/elance/job.rb",
    "lib/elance/profile.rb",
    "lib/elance/project.rb",
    "lib/elance/workroom.rb"
  ]
  s.homepage = 'https://github.com/dcollazo/elance_gem'
  s.add_dependency('awesome_print')
  s.add_dependency('httparty')
  s.add_dependency('base64')
  s.add_dependency('uri')
  s.add_dependency('activesupport')
end