require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe 'associations' do 
    it { should have_many(:taggings)}
    it { should have_many(:articles).through(:taggings)}
  end

  describe 'instance methods' do 
    describe '#to_s' do 
      it 'turns tag names into string' do 
        tag_1 = create(:tag)

        expect(tag_1.to_s).to eq(tag_1.name)
      end
    end
  end
end