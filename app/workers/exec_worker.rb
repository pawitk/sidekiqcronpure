class ExecWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "Executing command `#{args.first['cmd']}`"
    puts `#{args.first['cmd']}`
    puts "Done command `#{args.first['cmd']}`"
  end
end
