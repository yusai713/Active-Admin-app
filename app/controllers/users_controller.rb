class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def search
    user_search = UserSearch.new(params_user_search)
    @users = user_search.execute
  end

  private

  def params_user_search
    params.permit(:search_name, :search_age, :search_address)
  end
end
