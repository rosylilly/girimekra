# girimekra

## Requirements

### Language runtimes

- ruby: v2.4.1
- node.js: v7.9.0
  - [yarn](https://github.com/yarnpkg/yarn): v0.27.5

### System dependencies

- [rbenv](https://github.com/rbenv/rbenv)
- [ndenv](https://github.com/riywo/ndenv)
- [direnv](https://github.com/direnv/direnv)

## Development

### Setup environment

```shell
$ cd project
$ bin/setup
```

### Launch development server and processes

```shell
$ cd project
$ bin/guard
```

[guard](https://github.com/guard/guard) - a command line tool to easily handle events on file system modifications.

Processes:

- Bundler: `bundle install` automated
- Rails server(port: 3000): web application server
- Gulp: webpack js building proccess
- RSpec: run specs with automatically

### Linter and formatters

#### for ruby

```shell
$ rubocop
# or `rubocop -a` to auto fix
```

#### for js

```shell
$ gulp lint
# or `gulp fix` to auto fix
```
