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

## Usage

Mascherano currently have several recipes:

1. env
2. figaro
3. foreman
4. go
5. upstart

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
