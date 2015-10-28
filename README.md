## PHP Pow Powered

This project uses Rack middlewares to host a PHP application on [Pow](http://pow.cx/).

With [guard](https://github.com/guard/guard) and [Rack::LiveReload](https://github.com/johnbintz/rack-livereload)
your browser will automagically refresh whenever a source file is saved (even faster with CSS files
that will be injected).

### How to use in your project

Clone this repo, then copy these files in the root of jour PHP project:

 - Gemfile
 - Guardfile
 - config.ru

Then, in the project root run:

```sh
# Only if you use Mac OS X *El Capitan*
brew link openssl --force

# Install dependencies
bundle install

# Link to Pow
ln -s . ~/.pow/
# or, more easily (https://github.com/Rodreegez/powder)
powder link

# To auto-reload your browser whenever you save a file
guard
```

### WARNING

The `public/` directory is automatically static-served by **pow**.
This means you can't put PHP files in there, or the browser will respond with the sources.

This is why the directory is called `public_/`.

