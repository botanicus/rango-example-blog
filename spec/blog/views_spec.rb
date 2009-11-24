# encoding: utf-8

require_relative "../spec_helper.rb"

describe "URL /" do
  include Blog
  before(:each) do
    @response = get("/")
    DataMapper.auto_migrate!
    Post.create!(slug: "hello-world", title: "Hello World!")
  end

  it "should returns HTTP 200 OK" do
    @response.should be_successful
  end

  it "should have an articles" do
    @response.should have_selector(".container .post") do |element|
      element.should contain("Hello World!")
    end
  end
end
