require 'rails_helper'

describe 'user see all articles' do 
  describe 'they visit /articles' do 
  	 let!(:article_1) {create(:article)}
  	 let!(:article_2) {create(:article)}

  	it 'displays all articles' do 
  	 
  	  visit article_path(article_1.id)

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
      expect(page).to have_link('<< Back to Articles List')
      
      expect(page).to_not have_content(article_2.title)
      expect(page).to_not have_content(article_2.body)

  	end



  end
end