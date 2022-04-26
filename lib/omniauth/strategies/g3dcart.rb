require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class G3dcart < OmniAuth::Strategies::OAuth2
      option :name, "g3dcart"

      option :client_options, {
        authorize_url: '/oauth/authorize',
        token_url:  '/oauth/token',
        site: 'https://apirest.3dcart.com'
      }
      
      option :token_params, { grant_type: 'authorization_code' }
      option :provider_ignores_state, true
      
      def request_phase
        redirect client.auth_code.authorize_url({:redirect_uri => callback_url}.merge(authorize_params))
      end

      def authorize_params
        super
      end

      protected
      
      def callback_url
        options[:redirect_uri] || (full_host + script_name + callback_path)
      end
           
    end
  end
end
