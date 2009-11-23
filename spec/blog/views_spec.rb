# encoding: utf-8

require_relative "../spec_helper.rb"

describe "URL /" do
  before(:each) do
    @response = get("/")
  end

  it "should returns HTTP 200 OK" do
    @response.should be_successful
  end

  it "should have links included" do
    # Webrat provides have_selector, have_xpath and contain matchers
    #@response.should have_selector("body > .container #links")
    @response.should have_xpath("//div[@class='container']/div[@id='links']") do |element|
      element.should contain("Links")
      element.should have_selector("li a")
    end
  end
end
