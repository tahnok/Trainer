require 'spec_helper'

describe PagesController do

  render_views

  before :each do
    @base_title = "Trainer | "
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector "title", :content => @base_title + "Home"
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector "title", :content => @base_title + "Contact"
    end
  end

  describe "GET 'about'" do
    it "should be succesful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector "title", :content => @base_title + "About"
    end
  end

  describe "Get 'help'" do
    it "should be succesful" do
      get 'help'
      response.should be_success
    end

    it "should have the right title" do
      get 'help'
      response.should have_selector "title", :content => @base_title + "Help"
    end
  end

end
