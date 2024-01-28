require 'rails_helper'

RSpec.describe "BloodMarkers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get blood_markers_path
      expect(response).to have_http_status(:success)
    end

    it "renders the index template" do
      get blood_markers_path
      expect(response).to render_template(:index)
    end

    it "assigns @blood_markers" do
      blood_marker = BloodMarker.create!(name: "Example Marker")
      get blood_markers_path
      expect(assigns(:blood_markers)).to eq([blood_marker])
    end
  end
end
