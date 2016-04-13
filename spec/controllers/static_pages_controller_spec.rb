require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views

  it "should get home" do
      get :home
      expect(response).to be_success
      assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  it "should get help" do
      get :help
      expect(response).to be_success
      assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  it "should get about" do
    get :about
    expect(response).to be_success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

end
