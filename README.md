# OmniAuth Vimeo

This is an OmniAuth strategy for authenticating to Vimeo. To
use it, you'll need to sign up for an OAuth Application ID and Secret
on the [Vimeo Applications Page](http://vimeo.com/api/applications).

[![Build Status](https://secure.travis-ci.org/beanieboi/omniauth-vimeo.png?branch=master)](http://travis-ci.org/beanieboi/omniauth-vimeo)
[![Dependency Status](https://gemnasium.com/beanieboi/omniauth-vimeo.png)](https://gemnasium.com/beanieboi/omniauth-vimeo)

## Basic Usage

    use OmniAuth::Builder do
      provider :vimeo, ENV['VIMEO_KEY'], ENV['VIMEO_SECRET']
    end

## License

Copyright (c) 2011 Benjamin Fritsch and Lomographische AG.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.