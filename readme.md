# Minable

[![Gem Version](https://badge.fury.io/rb/minable.png)](http://badge.fury.io/rb/minable)
[![Code Climate](https://codeclimate.com/github/bolser/minable/badges/gpa.svg)](https://codeclimate.com/github/bolser/minable)

## Warning: Minable's architechure is not yet finalised and is therefore not considered production ready.

Minable is a light-weight responsive framework powered by Sass.

Currently Minable is a work in progress and therefore is likely to evolve over time as will this documentation.

## Requirements

Sass 3.2+

## SASS projects

Minable includes a way to generate a directory with all the necessary files.
For command line help: `$ minable help`

## Install for Rails 3.1+

In your Gemfile:

    gem 'minable'

Then run:

    $ bundle install

Restart your server. Then rename application`.css` to application`.css.scss`:

    mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss

Delete the sprocket directive in application.css.scss.

    *= require_tree .

If you're planning on overwriting the default settings, create a `_settings.scss` file first. Make sure to include it before `minable/all`.

    @import "settings";
    @import "minable/all";
