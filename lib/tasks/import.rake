namespace :import do
  desc 'Import data for storage in project database'

  task locations: :environment do
    Import::Locations.run
  end
end