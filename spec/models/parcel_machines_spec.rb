RSpec.describe ParcelMachine do
  
  let(:machine) { create(:parcel_machine) }
    
  it 'has a name' do
    expect(machine.name).to be_present
  end
  
  it 'has a zip' do
    expect(machine.zip).to be_present
  end
end
