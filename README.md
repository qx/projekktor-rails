# Projekktor::Rails

projekktor-rails provides the video player projekktor via Rails asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'projekktor-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install projekktor-rails

## Usage

Add this to your application.js

    //= require projekktor

    $(function() {
      projekktor('video', {
        playerFlashMP4: "/assets/jarisplayer.swf",
        playerFlashMP3: "/assets/jarisplayer.swf"
      });
    });

Add this to your application.css

    *= require projekktor

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


Update projekktor from upstream:

    $ rake update_projekktor
