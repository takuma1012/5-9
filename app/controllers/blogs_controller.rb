class BlogsController < ApplicationController

before_action :authenticate_user!,except: [:choose, :about]


  def choose
  end

  def about
  end

  def index
  	@blogs = Blog.all
  	@blog = Blog.new
    @user = current_user
  end

  def show
  	@blog = Blog.find(params[:id])
    @blog_new = Blog.new
    @user = @blog.user
  end

  def create
  	blog = Blog.new(blog_params)
    blog.user_id = current_user.id
      if blog.save
      	redirect_to blog_path(blog), notice: 'Created new book!!'
      else
        render 'choose'
      end
  end

  def edit
  	@blog = Blog.find(params[:id])
    @user = current_user
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path, notice: 'Edited book!!'
  end

  def destroy
  	@blog = Blog.find(params[:id])
  	@blog.destroy
    redirect_to user_path(@blog.user.id), notice: 'Deleted book!!'
  end

  private
  	def blog_params
  		params.require(:blog).permit(:title, :body)
  	end
end
