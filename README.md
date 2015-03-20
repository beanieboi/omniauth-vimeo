# OmniAuth Vimeo

This is an OmniAuth strategy for authenticating to Vimeo. To
use it, you'll need to sign up for an OAuth Application ID and Secret
on the [Vimeo Applications Page](https://developer.vimeo.com/apps).
You can read more about Vimdeo's oauth over at their [developer page](https://developer.vimeo.com/apis/advanced#oauth)


## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-vimeo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-vimeo

## Usage

If omniauth-vimeo is ready to go, you need to add the following lines to your `config/initializers/omniauth.rb`:

    use OmniAuth::Builder do
        provider :vimeo, ENV['VIMEO_KEY'], ENV['VIMEO_SECRET']
    end

If you need write permission use the following lines:

    use OmniAuth::Builder do
        provider :vimeo, ENV['VIMEO_KEY'], ENV['VIMEO_SECRET'], authorize_params: {permission: "write"}
    end

You need to replace the VIMEO_KEY and VIMEO_SECRET with your own credentials, you can get them at the Vimeo's developer page as mention above.

Open the following URL and connect your Vimeo account with your application:

    /auth/vimeo

## Sample Auth Hash
	{
      "provider"=>"vimeo",
      "uid"=>5387263,
      "info"=>{
        "id"=>5387263,
        "nickname"=>"beanieboi",
        "name"=>"beanie",
        "bio"=>nil,
        "account"=>"basic",
        "location"=>nil,
        "pictures"=>[
          {
            "type"=>"portrait",
            "width"=>30,
            "height"=>30,
            "link"=>"https://i.vimeocdn.com/portrait/2249717_30x30.jpg"
          },
       	  {
       	    "type"=>"portrait",
       	    "width"=>75,
       	    "height"=>75,
       	    "link"=>"https://i.vimeocdn.com/portrait/2249717_75x75.jpg"
       	  },
          {
            "type"=>"portrait",
            "width"=>100,
            "height"=>100,
            "link"=>"https://i.vimeocdn.com/portrait/2249717_100x100.jpg"
          },
          {
            "type"=>"portrait",
            "width"=>300,
            "height"=>300,
            "link"=>"https://i.vimeocdn.com/portrait/2249717_300x300.jpg"
          }
        ],
        "websites"=>[],
        "content_filter"=>[
          "language",
          "drugs",
          "violence",
          "nudity",
          "safe",
          "unrated"
        ],
        "created_time"=>"2010-12-03T17:57:33+00:00",
        "link"=>"https://vimeo.com/beanieboi",
        "uri"=>"/users/5387263"
      },
      "credentials"=>{
        "token"=>"token",
        "expires"=>false
      },
      "extra"=>{
        "scope"=>"public private"
      }
    }

## Supported Rubies

OmniAuth Vimeo is tested under 2.0 and above

[![Build Status](https://secure.travis-ci.org/beanieboi/omniauth-vimeo.png?branch=master)](http://travis-ci.org/beanieboi/omniauth-vimeo)

## Note on Patches/Pull Requests

- Fork the project.
- Make your feature addition or bug fix.
- Add tests for it. This is important so I don’t break it in a future version unintentionally.
- Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
- Send me a pull request. Bonus points for topic branches.

## License

Copyright (c) 2015 Benjamin Fritsch.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
