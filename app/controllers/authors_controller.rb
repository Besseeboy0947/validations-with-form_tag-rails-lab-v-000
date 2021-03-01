class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id][:author_id])
    # get :show,params:{id:@author.id}
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)

    redirect_to author_path(@author)
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
