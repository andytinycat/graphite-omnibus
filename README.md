# Graphite Omnibus

This is an [fpm-cookery](https://github.com/bernd/fpm-cookery) Omnibus recipe
that builds a Python interpreter and then packages Graphite and its dependencies
into it.

## Motivation

[This whinge](https://twitter.com/supersheep/status/509332504269299712).

## Note

This is extremely alpha, and should be improved. For example, the following would be good:

- support for systems other than Ubuntu 12.04
- a build lab using Docker or Vagrant or something
- hosting packages for people to make life easier

## Building

Install fpm-cookery, and build the package with:

    fpm-cook package graphite-omnibus.rb

## Graphite versions

This builds straight off HEAD of master on the three Graphite projects
(Carbon, graphite-web, Whisper).

## Contributing

All pull requests welcome. This was just a quick hack to satisfy myself it
could be done easily.
