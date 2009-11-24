# encoding: utf-8

require_relative "../spec_helper.rb"

describe Blog do
  include Blog
  describe Post do
    before(:each) do
      @post = Post.new
    end

    it "should have a title" do
      @post.should respond_to(:title)
    end

    it "should have a slug" do
      @post.should respond_to(:slug)
    end
  end

  describe Tag do
    # TODO: write specs
  end

  describe Comment do
    # TODO: write specs
  end
end
