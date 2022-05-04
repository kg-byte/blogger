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
      
  	end

    it 'displays information for one article' do 
      comment_1 = create(:comment, article: article_1)
      comment_2 = create(:comment, article: article_1)

      visit articles_path

      click_on article_1.title 
      save_and_open_page
      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
      expect(page).to have_content(comment_1.author_name)
      expect(page).to have_content(comment_1.body)
      expect(page).to have_content(comment_2.author_name)
      expect(page).to have_content(comment_2.body)
    end



  end
end