require 'bundler/setup'
require 'rspec'

PROJECT_ROOT = File.expand_path('../..', __FILE__)

Dir.glob(File.join(PROJECT_ROOT, 'spec', 'support', '*.rb')).each do |file|
  require file
end

Dir.glob(File.join(PROJECT_ROOT, 'lib', '*.rb')).each do |file|
  require file
end
