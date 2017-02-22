Gem::Specification.new do |s|
  s.name        = 'prospectus_pkgforge'
  s.version     = '0.0.2'
  s.date        = Time.now.strftime('%Y-%m-%d')

  s.summary     = 'Prospectus helpers for pkgforge'
  s.description = "Prospectus helpers for pkgforge"
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/amylum/prospectus_pkgforge'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split

  s.add_dependency 'pkgforge', '~> 0.15.0'
  s.add_dependency 'prospectus', '~> 0.2.0'

  s.add_development_dependency 'rubocop', '~> 0.42.0'
  s.add_development_dependency 'rake', '~> 11.2.0'
  s.add_development_dependency 'codecov', '~> 0.1.1'
  s.add_development_dependency 'rspec', '~> 3.5.0'
  s.add_development_dependency 'fuubar', '~> 2.1.0'
end
