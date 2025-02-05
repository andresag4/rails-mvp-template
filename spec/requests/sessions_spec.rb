require "rails_helper"

RSpec.describe "Sessions", type: :request do
  describe "GET new" do
    before { get new_session_path }

    it { expect(response).to have_http_status(:success) }
  end

  describe "POST create" do
    let(:user) { create(:user) }
    let(:params) do
      {
        user: {
          email: user.email,
          password: user.password
        }
      }
    end

    before { post session_path, params: params }

    it "returns successful response" do
      expect(User.last.email).to eq(user.email)
      expect(response).to redirect_to(root_path)
      expect(response.cookies["user_id"]).to be_present
    end
  end

  describe "DELETE destroy" do
    let(:user) { create(:user) }
    let(:params) do
      {
        user: {
          email: user.email,
          password: user.password
        }
      }
    end

    before do
      post session_path, params: params
      delete session_path, params: params
    end

    it "logs out user" do
      expect(response).to redirect_to(root_path)
      expect(response.cookies["user_id"]).to be_blank
    end
  end
end
