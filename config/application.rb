ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile", __FILE__)

require "bundler/setup" if File.exist?(ENV["BUNDLE_GEMFILE"])
Bundler.require

ENV["RACK_ENV"] ||= "development"

$LOAD_PATH.unshift File.join(File.dirname(__FILE__),'..')

Dir.glob(File.join(File.dirname(__FILE__), '../app/**/*.rb')).each do |fname|
  load fname
end

module SidekiqCronPure
 class Application
   def self.root
     @root ||= File.dirname(File.expand_path('..', __FILE__))
   end

   def self.env
     @env ||= ENV["RAILS_ENV"] || ENV["RACK_ENV"] || ENV["ENV"] || "development"
   end

   def self.logger
     @logger ||= Logger.new(STDOUT)
   end
 end
end

require_relative "initializers/sidekiq"