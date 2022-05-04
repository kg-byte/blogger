require 'rails_helper'

describe 'user see all articles' do 
  describe 'they visit /articles' do 
  	it 'displays all articles' do 
  	  article_1 = create(:article)
  	  article_2 = create(:article)
  	 
  	  visit '/articles'

  	  expect(page).to have_content(article_1.title)
  	  expect(page).to have_content(article_2.title)
  	end
  end
end