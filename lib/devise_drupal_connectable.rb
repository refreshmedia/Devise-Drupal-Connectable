require 'devise'
require 'devise_drupal_connectable/strategy'

#$:.unshift(File.dirname(__FILE__)) unless
#  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

# module DeviseDrupalConnectable
#  VERSION = '0.0.1'
# end

Devise.add_module(:drupal_connectable,
  :strategy => true,
  :route => :session,
  :controller => :sessions,
  :model => 'devise_drupal_connectable/model')
