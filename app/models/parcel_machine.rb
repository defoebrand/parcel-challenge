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
end
