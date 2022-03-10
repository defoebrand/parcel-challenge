env :PATH, ENV['PATH']

set :output, "log/cron_log.log"

every :day, at: '1:30am' do 
  rake 'import:locations'
end
