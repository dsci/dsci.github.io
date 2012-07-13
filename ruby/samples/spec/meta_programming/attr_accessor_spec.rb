require 'spec_helper'

describe "Implementing my own attr_accessor method" do

  let(:config){FileConfig.new}

  describe FileConfig do

    context "which implements #my_attr_accessor" do

      it {FileConfig.should respond_to(:my_attr_accessor)}

      context "an instance of FileConfig" do
      
        it{config.should respond_to(:path)}
        it{config.should respond_to(:mime_type)}

      end

      context "assigning variables to my accessors" do

        {:path => "/Users/Bob/images/",
         :mime_type => "image/png"}.each_pair do |key,value|

          context "when #{value} should assigned to #{key}" do
            it "##{key}= assigns and ##{key} returns the value" do
              expect{config.send("#{key}=", value)}.to_not raise_error
              config.send(key).should eq value
            end 
          end
        end
      end

    end

  end


end