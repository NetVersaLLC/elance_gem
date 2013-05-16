Gem::Specification.new do |s|
  s.name = 'elance'
  s.version = '1.0.0'

  s.date = '2013-05-15'
  s.summary = "Elance API"
  s.description = "A gem for utilizing the Elance API"
  s.authors = ["David Collazo", "Jonathan Jeffus"]
  s.email = 'jonathan.jeffus@netversa.com'
  s.files = [
    "elance.gemspec",
    "GEMFILE",
    "LICENSE.txt",
    "README.md",
    "lib/elance.rb",
    "lib/elance/authentication.rb",
    "lib/elance/base.rb",
    "lib/elance/freelancer.rb",
    "lib/elance/job.rb",
    "lib/elance/profile.rb",
    "lib/elance/project.rb",
    "lib/elance/workroom.rb"
  ]
  s.homepage = 'https://github.com/dcollazo/elance_gem'
  s.add_dependency('httparty')
  s.add_dependency('activesupport')
end