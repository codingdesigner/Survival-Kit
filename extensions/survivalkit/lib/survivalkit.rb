Compass::Frameworks.register("survivalkit", :path => "#{File.dirname(__FILE__)}/..")

if defined?(ActionController)
  require File.join(File.dirname(__FILE__), 'app', 'helpers', 'survivalkit_helper')
  ActionController::Base.helper(survivalkitHelper)
end
