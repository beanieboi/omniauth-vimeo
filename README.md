# OmniAuth Vimeo

This is an OmniAuth strategy for authenticating to Vimeo. To
use it, you'll need to sign up for an OAuth Application ID and Secret
on the [Vimeo Applications Page](https://developer.vimeo.com/apps).
You can read more about Vimdeo's oauth over at their [developer page](https://developer.vimeo.com/apis/advanced#oauth)

## Basic Usage

add the following line to your Gemfile.

    gem 'omniauth-vimeo'

If you finished running bundler and omniauth-vimeo is ready to go, you need to add the following lines to your `config/initializers/omniauth.rb`:

    use OmniAuth::Builder do
      provider :vimeo, ENV['VIMEO_KEY'], ENV['VIMEO_SECRET']
    end

You need to replace the VIMEO_KEY and VIMEO_SECRET with your own credentials, you can get them at the Vimeo's developer page as mention above.

## Supported Rubies

OmniAuth Vimeo is tested under 1.8.7, 1.9.2, 1.9.3 and Ruby Enterprise Edition.

[![Build Status](https://secure.travis-ci.org/beanieboi/omniauth-vimeo.png?branch=master)](http://travis-ci.org/beanieboi/omniauth-vimeo)

## Note on Patches/Pull Requests

- Fork the project.
- Make your feature addition or bug fix.
- Add tests for it. This is important so I don’t break it in a future version unintentionally.
- Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
- Send me a pull request. Bonus points for topic branches.

## License

Copyright (c) 2011 Benjamin Fritsch.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
