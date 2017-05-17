require "test_helper"

describe Editors::HomeController do
  it "should get index" do
    get :index
    value(response).must_be :success?
  end

end
