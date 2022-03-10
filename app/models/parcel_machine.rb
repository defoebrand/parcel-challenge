class ParcelMachine < ApplicationRecord
  validates :zip, :name, presence: true
  
  def country
    a_name['0']
  end
  
  def region
    a_name['1']
  end
  
  def district
    a_name['2']
  end
  
  def city
    a_name['3']
  end
  
  def street_name
    a_name['5']
  end
  
  def street_number
    a_name['7']
  end
  
  def full_address
    "#{street_name} #{street_number}, #{city}, #{zip} #{region}, #{country}"
  end
  
  def self.import_record(data)
    find_or_create_by!(name: data['NAME']) do |machine|
      machine.zip = data['ZIP'],
      machine.machine_type = data['TYPE'],
      machine.a_name = {
        "0" => data['A0_NAME'], 
        "1" => data['A1_NAME'], 
        "2" => data['A2_NAME'], 
        "3" => data['A3_NAME'], 
        "4" => data['A4_NAME'], 
        "5" => data['A5_NAME'], 
        "6" => data['A6_NAME'], 
        "7" => data['A7_NAME'], 
        "8" => data['A8_NAME']
      },
      machine.coordinates = {
        "X" => data['X_COORDINATE'], 
        "Y" => data['Y_COORDINATE']
      },
      machine.service_hours = data['SERVICE_HOURS'],
      machine.temp_service_hours = data['TEMP_SERVICE_HOURS'],
      machine.temp_service_hours_until = data['TEMP_SERVICE_HOURS_UNTIL'],
      machine.temp_service_hours_2 = data['TEMP_SERVICE_HOURS_2'],
      machine.temp_service_hours_2_until = data['TEMP_SERVICE_HOURS_2_UNTIL'],
      machine.comment = {
        "lit" => data['comment_lit'], 
        "eng" => data['comment_eng'], 
        "lav" => data['comment_lav'], 
        "est" => data['comment_est'], 
        "rus" => data['comment_rus']
      },
      machine.modified = data['MODIFIED']
    end
  end
end
