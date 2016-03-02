RSpec.describe ProtoPagesController, '#show' do
  HighVoltage.page_ids.each do |page|
    context "on GET to /pages/#{page}" do
      before do
        get :show, id: page
      end

      it { expect(response).to have_http_status(:ok) }
    end
  end
end
