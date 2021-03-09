# Usage

`bundle install` to install dependencies.
`bundle exec rackup` to start the server.

Paths work like so:

```
http://localhost:9292/?github=duckinator                     => keys for @duckinator on GitHub.
http://localhost:9292/?gitlab=duckinator                     => keys for @duckinator on GitLab.
http://localhost:9292/?github=duckinator&gitlab=duckinator   => keys for @duckinator on both.
```
