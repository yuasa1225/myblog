class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        p "============================="
        p params
        p "============================="
        @post.comments.create(comment_params)
        redirect_to post_path(@post)
    end


    private
        def comment_params
            params.require(:comment).permit(:body)
        end
end