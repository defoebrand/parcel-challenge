RSpec.describe 'ParcelMachines' do
  let(:machine) { create(:parcel_machine) }

  describe 'GET #index' do
    it 'returns successful response' do
      get root_path

      # expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns successful response' do
      get machine_path(machine)
  
      expect(response).to have_http_status(:success)
    end
  end
end