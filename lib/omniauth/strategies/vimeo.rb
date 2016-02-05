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
          'id' => user_info['uri'].split('/').last.to_i,
          'nickname' => user_info['link'].split('/').last,
          'name' => user_info['name'],
          'bio' => user_info['bio'],
          'account' => user_info['account'],
          'location' => user_info['location'],
          'pictures' => user_info['pictures'],
          'websites' => user_info['websites'],
          'content_filter' => user_info['content_filter'],
          'created_time' => user_info['created_time'],
          'link' => user_info['link'],
          'uri' => user_info['uri'],
        }
      end

      def callback_url
        full_host + script_name + callback_path
      end

      def user_info
        access_token.params['user']
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
