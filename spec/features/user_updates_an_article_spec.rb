require 'rails_helper'

describe 'user updates an article' do 
  describe 'they link from the show page' do 
  	let!(:article_1) {create(:article)}
  	let!(:article_2) {create(:article)}
  	
  	it 'displays all articles without the deleted entry' do 
  	  visit article_path(article_1)

  	  click_link 'Edit'


      fill_in 'article[title]', with: 'New Title!'
      fill_in 'article[body]', with: 'New Body!'

      click_on 'Update Article'

      expect(current_path).to eq(article_path(article_1))
      expect(page).to have_content('New Title!')
      expect(page).to have_content('New Body!')
  
      expect(page).to have_content("Article New Title! Updated!")
  	end
  end
end