class CommentController < ApplicationController
#  def show
#  end


    def show
     @post = Post.find(params[:postid])
     @comments = @post.comments unless @post.nil?
  end

  def create1
     @newcomment = Comment.new(comment_params)
     @newcomment.save
     redirect_to comment_path(:postid => @newcomment.post_id)
  end

def mystore
    up_file = params[:localfile]
    myfile = MyuploaderUploader.new
    myfile.store!(up_file)
end

  private
  def comment_params
      params.require(:newcomment).permit(:content,:post_id)
  end
end

