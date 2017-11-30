require 'rails_helper'

describe "the sign up process" do
  it "signs a new user up" do
    visit photos_path
    click_link 'Sign up'
    fill_in 'Email', :with => '1234@1234.com'
    fill_in 'Password', :with => '123456'
    fill_in 'Password confirmation', :with => '123456'

    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end
