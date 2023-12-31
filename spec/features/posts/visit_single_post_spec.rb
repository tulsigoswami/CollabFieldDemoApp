require 'rails_helper'

RSpec.feature "Visit Single Post", :type => :feature do
  let(:user) {create(:user)}
  let(:post) {create(:post)}

  scenario 'User goes to a single post from home page' do
    post
    visit root_path
    page.find(".single-post-card").click
    expect(page).to have_selector('body .modal')
    # page.find('.interested a').click
    # expect(page).to have_selector('#single-post-content', text: post.content)
  end
end
