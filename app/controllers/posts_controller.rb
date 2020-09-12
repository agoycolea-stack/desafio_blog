class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", except: :index
  def new
    @post = Post.new
  end

  def create
    @post =Post.create(title: params[:post][:title], 
                date: params[:post][:date],
                image_url: params[:post][:image_url],
                content: params[:post][:content])
    
  end
  def index
    @posts = Post.all
  end

  def dashboard


    @posts = Post.all

  end
end
