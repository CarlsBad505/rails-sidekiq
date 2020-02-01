## Rails + Sidekiq

### Installation Instructions
* Rails 5.2.3
* Ruby 2.5.1
* Redis (`brew install redis` if on mac)

1. bundle install
2. rails db:create db:migrate
3. redis-server
4. bundle exec sidekiq
5. rails s

## Description
This application's primary focus is to demonstrate the integration and power behind adding background jobs to your application. Specifically, we utilize the power of sidekiq where a single process can run multiple threads concurrently. This gives us the advantage of shared memory across threads, per process.

You can visit the sidekiq dashboard via `/sidekiq`. There you can live poll for queues or jobs.

There is additional implementation where we add cron abilities. The `schedule.yml` is an example of how we can initialize how application to perform background tasks in an automated fashion.
