require 'devise/models'

module Devise #:nodoc:
  module Models #:nodoc:
    module DrupalConnectable
      extend ActiveSupport::Concern

      included do
        attr_accessor :password, :current_password
        attr_accessor :password_confirmation
      end
      
      module ClassMethods
        def authenticate_with_drupal(sessid)
          resource = nil
          unless sessid.nil?
            conditions = ActiveRecord::Base.sanitize_sql_array ["s.sid = '%s' and s.uid = u.uid", sessid]
            results = Node.connection.execute("SELECT u.name as name FROM sessions s, users u where #{conditions}")
            results.each do |row|
              name = row[0]
              resource = User.where("name = ?", name).first unless name.blank?
            end
          end
          return resource
        end
      end
    end
  end
end