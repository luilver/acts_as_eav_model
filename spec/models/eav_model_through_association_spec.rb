require 'spec_helper'

describe "Validations on ActiveRecord Model through an association" do
  fixtures :posts, :post_attributes

  before(:each) do
    @post = Post.first
    @comment = Comment.create(:post => @post)
    @comment.reload
    @comment.post.should eql @post
  end

  it "should return false for a question mark method if it doesn't exist" do
    @post.made_up_method?.should be false
    @comment.post.made_up_method?.should be false
  end

  it "should return true for question mark method if it exists" do
    @post.foo = 'baz'
    @post.save!
    @post.foo?.should be true

    @comment.reload
    @comment.post.foo?.should be true
  end
end
