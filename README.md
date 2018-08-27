prospectus_pkgforge
=========

[![Gem Version](https://img.shields.io/gem/v/prospectus_pkgforge.svg)](https://rubygems.org/gems/prospectus_pkgforge)
[![Build Status](https://img.shields.io/circleci/project/amylum/prospectus_pkgforge.svg)](https://circleci.com/gh/amylum/prospectus_pkgforge)
[![Coverage Status](https://img.shields.io/codecov/c/github/amylum/prospectus_pkgforge.svg)](https://codecov.io/github/amylum/prospectus_pkgforge)
[![Code Quality](https://img.shields.io/codacy/4217bd861d2c4c34b7805416ccb4e85d.svg)](https://www.codacy.com/app/akerl/prospectus_pkgforge)
[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

[Prospectus](https://github.com/akerl/prospectus) helpers for [pkgforge](https://github.com/akerl/pkgforge)

## Usage

Add the following 2 lines to the .prospectus:

```
## Add this at the top
Prospectus.extra_dep('file', 'prospectus_pkgforge')

## Add this inside your item that has deps
extend ProspectusPkgforge::DepItems
```

As an example of a full real prospectus for [amylum/curl](https://github.com/amylum/curl):

```
Prospectus.extra_dep('file', 'pkgforge')
Prospectus.extra_dep('file', 'prospectus_pkgforge')

item do
  expected do
    github_release
    repo 'bagder/curl'
    regex /^curl-(\d+)_(\d+)_(\d+)$/, '\1.\2.\3'
  end

  actual do
    git_tag
    regex /^(.*)-\d+$/
  end

  extend ProspectusPkgforge::DepItems
end
```

## Installation

    gem install prospectus_pkgforge

## License

prospectus_pkgforge is released under the MIT License. See the bundled LICENSE file for details.

