class SearchsController < ApplicationController
  
  def search
    @range = params[:range]
    if params[:range] == "User"
       @users = User.looks(params[:search], params[:word])
    else
      @books = Book.looks(params[:search], params[:word])
    end
  end
  
end