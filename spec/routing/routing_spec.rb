require "spec_helper"

describe "routing: " do

  it "to /" do
    get("/").should route_to("pages#home")
  end

  it "to /contact" do
    get("/contact").should route_to("pages#contact")
  end

  it "to /about" do
    get("/about").should route_to("pages#about")
  end

end
