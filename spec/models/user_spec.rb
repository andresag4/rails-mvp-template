require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  describe "#authenticate_by" do
    it { expect(described_class.authenticate_by(email: user.email, password: user.password)).to eq(user) }
    it { expect(described_class.authenticate_by(email: "wrong", password: user.password)).to be_nil }
    it { expect(described_class.authenticate_by(email: user.email, password: "wrong")).to be_nil }
  end
end
