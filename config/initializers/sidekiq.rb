Sidekiq.configure_server do |config|
  config.redis = { namespace: 'SidekiqCronPure', url: ENV["REDIS_URL"] }
end