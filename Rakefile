require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('devise_drupal_connectable', '0.1.0') do |p|
  p.description = "Allow drupal to act as authentication point for devise."
  p.url = "http://foorama.com/"
  p.author = "Tim Trautmann"
  p.email = "tim@foorama.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = ['devise']
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }