class AddEndangeredWorker
  require 'csv'
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(csv_file)
    CSV.foreach(csv_file, headers: true) do |shark|
      Endangered.create(name: shark[0], icun: shark[1]) unless Endangered.find_by_name(shark[0])
    end
  end
end
