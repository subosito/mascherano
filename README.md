![Logo](img/mascherano-logo.png)

# Mascherano

Capistrano 3.x recipes

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mascherano'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install mascherano
```

## Recipes

Mascherano currently have several recipes:

| recipe         | description                                                                                           |
|----------------|-------------------------------------------------------------------------------------------------------|
| __env__        | Manage application configuration on `.env` file                                                       |
| __foreman__    | Manage Procfile application for [Foreman](http://ddollar.github.io/foreman)                           |
| __figaro__     | Manage configuration, usually `application.yml` for [Figaro](https://github.com/laserlemon/figaro)    |
| __go__         | Manage and ability to deploy go application                                                           |
| __upstart__    | Manage application management using Upstart                                                           |
| __token__      | Manage and generate random secret token                                                               |
| __passenger__  | Manage Pushion Passenger based application                                                            |
| __auth_basic__ | Manage and generate HTTP basic authentication `.htpasswd`                                             |
| _more to come_ | _pull request are welcome ;)_                                                                         |

This package also provides a `noscm` recipe for when you don't need source code on your deployment box (usually application already compiled).

```ruby
# deploy.rb
set :application, 'mascherano'
set :scm, :noscm
```
## Usage

Make sure you have `Capfile` in the root of your project, so you can add these lines (choose which one you're using):

```ruby
require 'mascherano/env'
require 'mascherano/figaro'
require 'mascherano/foreman'
require 'mascherano/go'
require 'mascherano/upstart'
```

Then on `config/deploy/{env}.rb` you can customize the options:

```ruby
set :env_file, '.staging.env'
set :foreman_procfile, -> { release_path.join('procfiles', 'staging') }
```

See the `lib/mascherano/task/*.cap` for more options.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
