require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Vimeo < OmniAuth::Strategies::OAuth
      option :name, 'vimeo'

      option :client_options, {
        :access_token_path => "/oauth/access_token",
        :authorize_path => "/oauth/authorize",
        :request_token_path => "/oauth/request_token",
        :site => "https://vimeo.com"
      }

      uid { user_info['id'] }

      info do
        {
          'nickname' => user_info['username'],
          'name' => user_info['display_name'],
          'location' => user_info['location'],
          'description' => user_info['bio'],
          'image' => user_info['portraits']['portrait'].select{|h| h['height'] == '300'}.first['_content'],
          'urls' => {
            'website' => user_info['url'],
            'vimeo' => user_info['profileurl']
          }
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def user_info
        @user_info ||= raw_info.nil? ? {} : raw_info["person"]
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('/api/rest/v2?method=vimeo.people.getInfo&format=json').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

      def request_phase
        options[:authorize_params] = {:perms => options[:scope]} if options[:scope]
        super
      end
    end
  end
end
