class CommentsController < ApplicationController

	def index
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		@comment.user_id = current_user.id

		if @comment.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end

	def show
	end

	def new
		
	end

	def create
		
	end

	def edit
	end

	def update
		
	end

	def destroy
		
	end

	private

	def comment_params
		params.require(:comment).permit(:content)
		
	end

	def find_post
		
	end
end
