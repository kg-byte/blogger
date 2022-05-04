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
 
      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
      expect(page).to have_content(comment_1.author_name)
      expect(page).to have_content(comment_1.body)
      expect(page).to have_content(comment_2.author_name)
      expect(page).to have_content(comment_2.body)
    end
  end

  describe 'they fill in a comment form' do
    it 'displays the comment on the article show' do 
      visit article_path(article_1)

      fill_in 'comment[author_name]', with: 'Tino'
      fill_in 'comment[body', with: 'So many thoughts on this article.'
      click_on 'Submit'

      expect(current_path).to eq(article_path(article_1))
      expect(page).to have_content('Post a Comment')
      expect(page).to have_content('Tino')
      expect(page).to have_content('So many thoughts on this article.')
    end
  end 
end