class PostsController < ApplicationController
  def index
    @all_form = Post.all
  end

  def show
    @show_form = Post.find(params[:show_id])
    @show_replies = @show_form.replies
  end

  def new
  end

  def create
    new_table =  Post.new(title: params[:title], editor: params[:editor], content: params[:content])
    new_table.save
    redirect_to '/'
  end

  def edit
    @edit_form = Post.find(params[:edit_id])
  end

  def update
    update_id = Post.find(params[:update_id])
    update_id.title = params[:title]
    update_id.editor = params[:editor]
    update_id.content = params[:content]
    update_id.save
    redirect_to '/'
  end

  def destroy
    Post.find(params[:destroy_id]).destroy
    redirect_to '/'
  end


end
