require 'spec_helper'

describe Post do

  let(:post){ Post.new }
  let(:current_user){Fabricate(:user)}

  it{should belong_to(:author)}

  context "attributes" do

    subject{post}

    it{should respond_to :text}
    it{should respond_to :written_at}

  end

  context "valid if" do

    before do
      post.text = "1" * (Application::RitterConfig.post_length)
      post.author = User.new
    end

    it "text is not empty and length is lower or equals #{Application::RitterConfig.post_length}" do
      post.should be_valid
    end

  end

  context "not valid if" do

    it "text is empty" do
      post.should_not be_valid
    end

    it "post length is greater than #{Application::RitterConfig.post_length}" do
      post.text = "1" * (Application::RitterConfig.post_length + 1)
      post.should_not be_valid
    end

    it "post includes the word 'twitter'" do
      post.text = "I got a twitter account today!"
      post.should_not be_valid
      post.errors.messages[:text].should include "The word twitter is not allowed!"
    end

    it "post includes the word 'Facebook'" do
      post.text = "Be a fan at Facebook"
      post.should_not be_valid
      post.errors.messages[:text].should include "The word facebook is not allowed!"
    end

    it "no author is attached" do
      post.text = "Hello from Rspec"
      post.should_not be_valid
    end

  end

  context "scopes" do

    it{Post.should respond_to(:by_author)}
    it{Post.should respond_to(:all_except)}

    context "10 posts written by a given author" do

      before do
        10.times do 
          post = Fabricate(:post, :author => current_user)
        end
        Fabricate(:post, :author => Fabricate(:user,:email => "ff@web.de"))
      end

      context "then result of #by_author" do 

        subject{Post.by_author(current_user)}
  
        it{should have(10).items}
        it{should_not have(11).items}

      end

      context "then result of #all_except" do

        subject{Post.all_except(current_user)}

        it{should have(1).item}
        
      end

    end

  end

  context "formatting behaviour" do

    let(:html_content){"<p><strong>Currently</strong> it rains like cats and dogs</p>"}

    it{Post.should respond_to :formattable}

    it{should respond_to(:to_html)}

    context "Markdown" do

      context "post with **Currently** it rains like cats and dogs" do
  
        let(:markdown_content){"**Currently** it rains like cats and dogs"}
        
        before do
          post.text = markdown_content
          current_user.stub!(:formatter).and_return("markdown")
          post.author = current_user
        end
  
        it "is converted to <strong>Currently</strong> it rains like cats and dogs after save" do
          post.text.should eq markdown_content
          post.save
          post.text.should include html_content
        end
  
      end

    end

    context "Textile" do

      context "post with *Currently* it rains like cats and dogs" do
        let(:textile_content){"*Currently* it rains like cats and dogs"}
        
        before do
          post.text = textile_content
          current_user.stub!(:formatter).and_return("textile")
          post.author = current_user
        end

        it "is converted to <strong>Currently</strong> it rains like cats and dogs after save" do
          post.text.should eq textile_content
          post.save
          post.text.should include html_content
        end

      end

    end

  end

end
