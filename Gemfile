source 'https://rubygems.org'
ruby "3.1.2"
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "sidekiq"
gem "sidekiq-cron"
gem "puma", "~> 5.6"
