require 'rails_helper'

describe 'user sees all articles' do 
  describe 'they visit /articles' do 
  	 let!(:article_1) {create(:article)}
  	 let!(:article_2) {create(:article)}

  	it 'displays all articles' do 
  	 
  	  visit articles_path

  	  expect(page).to have_content(article_1.title)
  	  expect(page).to have_content(article_2.title)
  	  expect(page).to have_link(article_1.title)
  	  expect(page).to have_link('Create a New Article')
  	end



  end
end