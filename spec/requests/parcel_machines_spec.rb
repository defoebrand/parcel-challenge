RSpec.describe 'ParcelMachines' do
  let(:machine) { create(:parcel_machine) }

  describe 'GET #index' do
    it 'returns successful response' do
      get root_path

      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns successful response' do
      get parcel_machine_path(machine)
  
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #export_all' do
    it 'returns successful response' do
      get export_all_path(format: 'xlsx')
  
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #export_single' do
    it 'returns successful response' do
      get export_single_path(machine, format: 'xlsx')
  
      expect(response).to have_http_status(:success)
    end
  end
end