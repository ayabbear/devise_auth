require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user1) { FactoryBot.create :user, firstname: "abcdef", lastname: "abcdef" }
  let(:user2) { FactoryBot.build :user, email: user1.email }
  let(:user3) { FactoryBot.build :user, firstname: nil, lastname: "abcdef" }
  let(:user4) { FactoryBot.build :user, firstname: "abcd", lastname: "abcdef" }
  let(:user5) { FactoryBot.build :user, firstname: "abcd", lastname: nil }
  let(:user6) { FactoryBot.build :user, firstname: "abcdef", lastname: "abcd" }
  let(:user7) { FactoryBot.build :user, firstname: "abcd", lastname: "abcdef", password: nil }

  context "email" do
    it "created" do
      expect(user1).to be_valid
    end
  end

  context "email" do
    it "is not valid if email exists" do
      expect(user2).to_not be_valid
    end
  end

  context "firstname" do
    it "is not valid when firstname is null" do
      expect(user3).to_not be_valid
    end
  end

  context "firstname" do
    it "is not valid when firstname is less than 5" do
      expect(user4).to_not be_valid
    end
  end

  context "lastname" do
    it "is not valid when lastname is null" do
      expect(user5).to_not be_valid
    end
  end

  context "lastname" do
    it "is not valid when lastname is less than 5" do
      expect(user6).to_not be_valid
    end
  end

  context "password" do
    it "is valid when password is not null" do
      expect(user7).to_not be_valid
    end
  end

end
