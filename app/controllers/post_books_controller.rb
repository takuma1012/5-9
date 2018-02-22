class PostBooksController < ApplicationController

	def new
		@post_book = PostBook.new
	end

	def create
		@post_book = PostBook.new(post_book_params)
		@post_book.user_id = current_user.id
		if @post_book.save
			redirect_to user_path(@user.id)
		else
			render :new
		end
	end

	def index
	end

	def show
	end

	private
		def post_book_params
			params.require(:user, :post_book).permit(:title, :body, :user_id)
		end
end
