require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:body) }
  end

  describe '#valid?' do
    it 'requires title and body' do
      post = BlogPost.new
      expect(post).not_to be_valid
    end

    it 'is valid with title and body' do
      post = build(:blog_post)
      expect(post).to be_valid
    end
  end
end
