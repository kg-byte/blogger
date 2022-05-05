require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do 
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:body)}
  end

  describe 'associations' do 
    it { should have_many(:comments)}
    it { should have_many(:taggings)}
    it { should have_many(:tags).through(:taggings)}
  end

  describe 'instance methods' do 
    describe '#tag_list' do 
      it 'turns associated tags into a string' do 
        article = create(:article, tag_list: "")
        tag_1 = article.tags.create(name: 'ruby')
        tag_2 = article.tags.create(name: 'gem')

        expect(article.tag_list).to eq("#{tag_1.name}, #{tag_2.name}")
      end
    end
  end
end
