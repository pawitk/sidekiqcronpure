class ExecWorker
  include Sidekiq::Worker

  def perform(args)
    puts "Executing command `#{args['cmd']}`"
    puts `#{args['cmd']}`
    puts "Done command `#{args['cmd']}`"
  end
end
