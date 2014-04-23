require 'spec_helper'

describe UrlsController do
  context "get #new " do
    it "responds succesfully to http 200 status code" do
      get :new
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  context " post #create" do
    it "creates with valid attributes" do
      url = FactoryGirl.create :url
      expect {
        post :create,:long_url => url.long_url
        }.to change { Url.count }.by(1)

  end
end
end
