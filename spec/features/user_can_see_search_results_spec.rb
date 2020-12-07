require 'rails_helper'

describe 'user can search for dog images' do
  it 'and see the results on the page' do

    visit root_path

    fill_in :number, with: "5"

    click_button 'Fetch Dogs'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("5 Results")

    within(first('.dog')) do
      expect(page).to have_css('.image')

      expect(page).to have_css('.breed')
      breed = find('.breed').text
      expect(breed).to_not be_empty

      expect(page).to have_css('.life-span')
      life_span = find('.life-span').text
      expect(life_span).to_not be_empty

      expect(page).to have_css('.temperament')
      temperament = find('.temperament').text
      expect(temperament).to_not be_empty
    end
  end
end
