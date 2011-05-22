require "ruby_coverage"
require "rails"
require "action_controller"
module RubyCoverage
  class Engine < Rails::Engine

    # We can add all of the public assets from our engine and make them
    # available to use.  This allows us to use javascripts, images, stylesheets
    # etc.
    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
 
  end
end
