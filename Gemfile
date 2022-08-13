source 'https://rubygems.org'
ruby "3.1.2"
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "sidekiq", "~> 6.5"
gem "sidekiq-cron", "~> 1.7"
gem "puma", "~> 5.6"
gem "redis-namespace", "~> 1.8"
