require 'rails_helper'

RSpec.describe Article, type: :model do
  let!(:article) { FactoryBot.create :article }
  let(:title1) { FactoryBot.build :article, title: nil }
  let(:title2) { FactoryBot.build :article, title: "abcd" }
  let(:title3) { FactoryBot.build :article, title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." }
  let(:text) { FactoryBot.build :article, text: nil }

  context "article" do
    it "created" do
      expect(article).to be_valid
    end
  end

  context "title" do
    it "is not valid if title is null" do
      expect(title1).to_not be_valid
    end
  end

  context "title" do
    it "is not valid when title is less than 5" do
      expect(title2).to_not be_valid
    end
  end

  context "title" do
    it "is not valid when title is more than 50" do
      expect(title3).to_not be_valid
    end
  end

  context "text" do
    it "is not valid when text is null" do
      expect(text).to_not be_valid
    end
  end

end
