require 'spec_helper'

describe PostsController do

  before do
    sign_in Fabricate(:user)
  end

  # Just listen to our messages we tell you and
  # ignore all other!
  let(:my_post){mock_model(Post).as_null_object}

  describe "POST" do

    let(:attributes) do
      {"text" => "hallo ...."}
    end

    before do
      Post.stub(:new).and_return(my_post)
    end

    context "#create" do

      let(:params){{:post => attributes}}

      it "adds a new post" do
        

        Post.should_receive(:new).with(params[:post]).and_return(my_post)
     
        post :create, params
      end

      context "when the post saves successfully" do

        it "sets a flash[:notice] message" do
          post :create, params

          assigns[:post].should be my_post
          flash[:notice].should eq("You composed your post successfully.")
        end

        it "redirects to the root url" do
          post :create, params

          response.should redirect_to root_url
          response.should has_status "Found"
        end
      end

      context "when the post fails to save" do

        before do
          my_post.stub(:save).and_return(false)
        end

        it "assigns @post" do
          post :create

          assigns[:post].should be my_post
          flash[:alert].should eq("Something went wrong")
        end
      end
    end

  end

  describe "DELETE" do

    context "#delete" do

      before do
        Post.stub!(:find).and_return(my_post)
      end

      it "destroys the post" do
        Post.should_receive(:destroy)
        delete :destroy, :id => "12"
        # using some fabricators:
        # expect{delete :destroy, :id => post.id}.should change(Post,:count)
      end

      it "redirects to the root url" do
        delete :destroy, :id => "12"
        response.should redirect_to root_url
      end

      it "sets a flash[:notice] message" do
        delete :destroy, :id => "12"
        flash[:notice].should eq "You deleted your post."
      end

    end

  end

end
