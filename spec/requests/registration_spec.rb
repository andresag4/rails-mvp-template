require "rails_helper"

RSpec.describe "Registrations", type: :request do
  describe "GET new" do
    before { get new_registration_path }

    it { expect(response).to have_http_status(:success) }
  end

  describe "POST create" do
    let(:user) { build(:user) }
    let(:params) do
      {
        user: {
          email: user.email,
          password: user.password,
          password_confirmation: user.password_confirmation
        }
      }
    end

    before { post registration_path, params: params }

    it "returns successful response" do
      expect(User.last.email).to eq(user.email)
      expect(response).to redirect_to(root_path)
      expect(response.cookies["user_id"]).to be_present
    end
  end
end
