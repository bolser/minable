#Minable

Minable is a minimal CSS framework written in SCSS. It's based on Yahoo's [Pure CSS](http://purecss.io/) and thoughtbot's [Bourbon](http://bourbon.io/).

## Requirements
Sass 3.2+

# SASS projects
Minable includes an easy way to generate a directory with all the necessary files.  
For command line help: `$ minable help`

#### Install

    gem install minable

Install Minable into the current directory by generating the `minable` folder:

    minable install

The generated folder will contain all the mixins and other necessary Minable files. It is recommended not to add or modify the Minable files so that you can update Minable easily.

You can specify a target directory using the `path` flag:

    minable install --path my/custom/path/

#### Import

Lastly, import the mixins at the beginning of your stylesheet(s):

    @import 'minable/minable';

# Install for Rails 3.1+
In your Gemfile:

    gem 'minable'

Then run:

    $ bundle install

Restart your server. Then rename application`.css` to application`.css.scss`:

    mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss

Delete the sprocket directive in application.css.scss.

    *= require_tree .

Import Minable at the beginning of application.css.scss. All additional stylesheets must be imported below Minable:

    @import "minable";

License
-------

Minable is Copyright © 2014 Joe Dinsdale. Bourbon is Copyright © 2011-2013 thoughtbot. Pure CSS is copyright 2014 Yahoo! Inc.