require "spec_helper"

describe "A Hash with accessing keys through dot notation" do 

  context "Having a database config which is a Hash" do

    let(:dictionary) do
      DatabaseConfig.new
    end

    before do 
      dictionary[:host]     = "localhost"
      dictionary[:port]     = "28317"
      dictionary[:database] = "ruby_class"
      dictionary[:user]     = "mustermann"
      dictionary[:password] = "heiner123"
    end 

    it{ dictionary.host.should eq "localhost" }
    it{ dictionary.port.should eq "28317" }
    it{ dictionary.database.should eq "ruby_class" }
    it{ dictionary.user.should eq "mustermann" }
    it{ dictionary.password.should eq "heiner123" }

  end
end