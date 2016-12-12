class CommentsController < ApplicationController
	# to do - devise before action

	def create
		@comment = @commentable.comments.new(comment_params)
		# to do - set devise user
		@comment.save
		redirect_to @commentable
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end

end
