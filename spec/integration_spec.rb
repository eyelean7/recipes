require('spec_helper')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)
describe('recipe', {:type => :feature}) do
  it "allows user to enter recipe" do
    visit('/')
    click_link('Add New Recipe')
    fill_in('new_recipe', :with => 'Chef Salad')
    fill_in('ingredients', :with => 'salad')
    fill_in('instructions', :with => 'make it')
    click_button('Add Recipe')
    expect(page).to have_content('Chef Salad')
  end
end
