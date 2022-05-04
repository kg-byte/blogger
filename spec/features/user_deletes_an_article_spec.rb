require 'rails_helper'

describe 'user deletes an article' do 
  describe 'they link from the show page' do 
  	let!(:article_1) {create(:article)}
  	let!(:article_2) {create(:article)}
  	
  	it 'displays all articles without the deleted entry' do 
  	  visit article_path(article_1)

  	  click_link 'Delete'

  	  expect(current_path).to eq(articles_path)
  	  expect(page).to have_content(article_2.title)
  	  expect(page).to_not have_content(article_1.title)
  	  expect(page).to have_content("Article Deleted!")
  	end
  end
end