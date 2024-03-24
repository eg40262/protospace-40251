class CommentsController < ApplicationController
  # def create
    #  Comment.create(comment_params)
    #  redirect_to "/prototypes/#{comment.prototype.id}"
  # end

  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = @prototype.comments.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@prototype)
    else
      @comments = @prototype.comments
      render 'prototypes/show'
    end
  end
  # ↑AIの回答

   private
   def comment_params
     params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
   end
end
