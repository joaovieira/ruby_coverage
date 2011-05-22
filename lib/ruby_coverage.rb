module RubyCoverage
  # This require basically states that we're going to require the engine
  # if you are using rails and your rails version is 3.x..
  require 'ruby_coverage/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
  
  # Adding a couple of extra files here and you can view all of the source
  # to see what they have in them.
  require 'templates/rcoverage/rcoverage_template'
  require 'ruby_coverage/analyser'
  require 'extensions/metric_fu/rcov_bluff_grapher'
  
  NAME = 'Code Coverage'
  PROGRAMMING_LANGUAGE = "Ruby"
  ANALYSER = self.name.split('::').first
end
