env :PATH, ENV['PATH']

set :output, "log/cron_log.log"

every 1.minute do 
    rake 'import:locations'
end

# every :day, at: '12am' do 
#   rake 'import:locations'
# end
