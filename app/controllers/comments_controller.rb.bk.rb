class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        p "========================"
        p params
        p "========================"
        @post.comments.create(comment_params)
        #p "========================"
        #p comment_params
        #p "========================"
        redirect_to post_path(@post)
    end


    private
        def comment_params
            params.require(:comment).permit(:boby)
        end
end