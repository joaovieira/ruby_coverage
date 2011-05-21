module RubyComplexity
  # This require basically states that we're going to require the engine
  # if you are using rails and your rails version is 3.x..
  require 'ruby_complexity/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
  
  # Adding a couple of extra files here and you can view all of the source
  # to see what they have in them.
  require 'templates/rcomplexity/rcomplexity_template'
  require 'ruby_complexity/analyser'
  require 'extensions/metric_fu/flog_bluff_grapher'
end
