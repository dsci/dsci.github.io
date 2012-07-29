require 'spec_helper'

describe WelcomeController do

  context "GET" do

    context "no user signed in" do


      it "assigns @posts to limited Posts" do
        Post.should_receive(:limit).and_return([])

        get :index

        assigns[:posts].should_not be nil
      end

      it "renders welcome/index" do

        get :index

        response.should render_template("index")
      end 
    end
  end

  context "if a user is signed in" do

    let(:user){Fabricate(:user)}
    let(:my_post){mock_model(Post).as_null_object}

    before do
      sign_in user
    end

    it "creates a new Post" do
      
      Post.should_receive(:new).and_return(my_post)
      get :index
    end

    it "assigns @post" do
      Post.should_receive(:new).and_return(my_post)
      get :index

      assigns[:post].should be my_post
    end

    it "assigns the users post to @my_posts" do
      my_posts = [my_post]
      Post.should_receive(:by_author).with(user).and_return(my_posts)

      get :index

      assigns[:my_posts].should eq my_posts
    end

    it "assigns all post which are not from the user to @posts" do
      Post.should_receive(all_except).with(user).and_return([])

      get :index

      assigns[:posts].should eq []
    end

    it "renders welcome/index" do
      get :index

      response.should render_template("index")
    end
  end

end