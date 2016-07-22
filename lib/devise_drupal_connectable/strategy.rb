require 'devise/strategies/base'

module Devise #:nodoc:
  module Strategies #:nodoc:
    class DrupalConnectable < ::Devise::Strategies::Base
      
      def valid?
        mapping.to.respond_to?(:authenticate_with_drupal)
      end
      
      def authenticate!
        # Attempt to find the drupal session cookie
        sessid = ""
        cookies.each do |key, values|
          if key =~ /^SSESS/
            sessid = values
          end
        end
        
        if !sessid.empty? and resource = mapping.to.authenticate_with_drupal(sessid)
          success!(resource)
        else
          fail(:invalid)
        end
      end
      
    end
  end
end

Warden::Strategies.add(:drupal_connectable, Devise::Strategies::DrupalConnectable)