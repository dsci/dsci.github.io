# -*- encoding : utf-8 -*-
require "spec_helper"

describe "A Hash with accessing keys through dot notation" do 

  context "Having a OAuth config which is a Hash" do

    let(:oauth_config) do
      OAuthConfig.new
    end

    before do 
      oauth_config[:client_secret]  = "6as725dxk8sx289203"
      oauth_config[:client_id]      = "28p|(tz2§4hs317"
      oauth_config[:redirect_uri]   = "http://example.tld/oauth/cb"
    end 

    it{ oauth_config.client_secret.should eq "6as725dxk8sx289203" }
    it{ oauth_config.client_id.should eq "28p|(tz2§4hs317" }
    it{ oauth_config.redirect_uri.should eq "http://example.tld/oauth/cb" }
    it{ expect{oauth_config.s3_secret}.to raise_error NoMethodError}

  end
end