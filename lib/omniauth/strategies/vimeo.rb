require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Vimeo < OmniAuth::Strategies::OAuth2
      option :name, 'vimeo'

      option :client_options, {
        token_url: "/oauth/access_token",
        authorize_url: "/oauth/authorize",
        site: "https://api.vimeo.com"
      }

      uid { info['id'] }

      info do
        {
          'id' => access_token.params['user']['uri'].split('/').last.to_i,
          'nickname' => access_token.params['user']['link'].split('/').last,
          'name' => access_token.params['user']['name'],
          'account' => access_token.params['user']['account'],
          'location' => access_token.params['user']['location'],
          'image' => access_token.params['user']['pictures'].last['link'],
          'vimeo_url' => access_token.params['user']['link']
        }
      end

      credentials do
        _credentials = {'token' => access_token.token}

        if access_token.expires? && access_token.refresh_token
          _credentials = _credentials.merge('refresh_token' => access_token.refresh_token)
        end

        if access_token.expires?
          _credentials = _credentials.merge('expires_at' => access_token.expires_at)
        end

        _credentials.merge!('expires' => access_token.expires?)
      end

      extra do
        { 'scope' => access_token.params['scope'] }
      end
    end
  end
end
