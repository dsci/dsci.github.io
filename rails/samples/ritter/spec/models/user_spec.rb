require 'spec_helper'

# before => before(:each) - # run before each example
# before(:all) - #  run one time only, before all of the examples in a group
# after(:each) - # run after each example 
# after(:all) - # run one time only, after all of the examples in a group

describe User do

  context "attributes" do

    subject{User.new}

    it{should respond_to :login}
    it{should respond_to :email}
    it{should respond_to :password}
    it{should respond_to :password_confirmation}
    it{should respond_to :username}

    it{should belong_to :formatter}

  end

  
end
