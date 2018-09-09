And ("I click( on) {string}") do |link|
    click_on link
end


And ("I click( on) {string} detail box") do |campaign_title|
    campaign = Campaign.find_by(title: campaign_title)
    within "##{ActionView::RecordIdentifier.dom_id(campaign)}" do 
        click_on link
    end
end

Then("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

And("I wait {int} second(s)") do |seconds|
    sleep seconds
end

And("stop") do  
    binding.pry
end

And("I attach an image to the campaign") do
    attach_file('campaign_image', "#{::Rails.root}/spec/fixtures/dummy.jpg")
end