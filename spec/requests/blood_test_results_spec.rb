require 'rails_helper'

RSpec.describe "BloodTestResults", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get new_blood_test_result_path
      expect(response).to have_http_status(:success)
    end

    it "renders the new template" do
      get new_blood_test_result_path
      expect(response).to render_template(:new)
    end
  end

  describe "POST /create" do
    context "with valid file" do
      it "processes the uploaded CSV file" do
        # example with a dummy CSV file:
        file = fixture_file_upload('spec/fixtures/test_results.csv', 'text/csv')
        post blood_test_results_path, params: { file: file }
        expect(response).to render_template(:show)
      end
    end

    context "without file" do
      it "re-renders the new template with an alert" do
        post blood_test_results_path
        expect(response).to render_template(:new)
        expect(flash[:alert]).to be_present
      end
    end
  end
end

