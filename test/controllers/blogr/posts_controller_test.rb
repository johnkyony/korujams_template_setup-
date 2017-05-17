require "test_helper"

describe Blogr::PostsController do
  it "should get index" do
    get :index
    value(response).must_be :success?
  end

  it "should get edit" do
    get :edit
    value(response).must_be :success?
  end

end
