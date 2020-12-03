require 'rails_helper'

describe 'User can search for dogs' do
  it 'and see resutls on page', :vcr do

    # json_response = File.read('spec/fixtures/dog_search.json')
  

    # stub_request(:get, "https://api.thedogapi.com/v1/images/search?limit=5").
    #      with(
    #        headers: {
    #    	  'X-Api-Key'=>ENV['DOG_API_KEY']
    #        }).
    #      to_return(status: 200, body: json_response, headers: {})


    # VCR.use_cassette('User_can_search/and_see_', re_record_interval: 7.days) do


      visit root_path
      # And I enter "5" into the number field
      fill_in :number, with: "5"
      # And I click on "Fetch Dogs"
      click_button "Fetch Dogs"
      # Then my path should be "/search"
      expect(current_path).to eq(search_path)
      # And I should see a message "5 Results"
      expect(page).to have_content("5 Results")
      # And I should see the following information for each result:
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

    # end # vcr


  end
end
