schedule_file = "config/schedule.yml"
sidekiq_process = Sidekiq::ProcessSet.new

# NOTE - This is just an example below of how to add it as a cron job

# if File.exist?(schedule_file) && sidekiq_process.size > 0
#   Sidekiq::Cron::Job.load_from_hash(YAML.load_file(schedule_file))
# end
