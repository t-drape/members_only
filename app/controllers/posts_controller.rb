class PostsController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to "/posts#index"
    else
      render :new, status: :unprocessable_entity
    end
  end
  def index
    @posts = Post.all
  end

  def post_params
    params.expect(post: [ :user_id, :title, :body ])
  end
end
