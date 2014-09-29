require 'spec_helper'

feature 'Creating Projects' do
	scenario "can create a project" do
		visit '/'

		click_link "New Project"

		fill_in "Name", with: "Sublime 2"
		fill_in "Description", with: "A text editor for Mac and PC"
		click_button "Create Project"

		expect(page).to have_content('Project Has Been Created')
	end
end