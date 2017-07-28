require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "GET #index" do
    # it "returns http success" do
    #   get :index
    #   expect(response).to have_http_status(:success)
    # end

    # it "returns data success" do
    #   get :index
    #   expect(response).to render_template("index")
    # end

    it "returns data success" do
      Comment.create(content: 'Hello 1')
      Comment.create(content: 'Hello')
      get :index
      expect(assigns(:comments).size).to eq 2
      expect(assigns(:comment).content).to eq 'Hello 1'
    end
  end

  describe "POST #create" do
    it 'create success' do
      post :create, params: {content: 'Hello'}
      expect(Comment.last.content).to eq 'Hello'
    end
  end

end
