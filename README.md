## PHP Pow Powered

This project uses Rack middlewares to host a PHP application on [Pow](http://pow.cx/).

### Install

```sh
# Clone this project
git clone https://github.com/caesarsol/php-pow-powered
cd php-pow-powered

# Only if you use Mac OS X *El Capitan*
brew link openssl --force

# Install dependencies
bundle install

# Test with `rackup`
rackup
```

Link the directory to `~/.pow/` or `powder link` if you use [`powder`](https://github.com/Rodreegez/powder).

Run `guard` to auto-reload your browser when you edit the files.


### WARNING

The `public/` directory is automatically static-served by **pow**.
This means you can't put PHP files in there, or the browser will respond with the sources.

This is why the directory is called `public_`.
