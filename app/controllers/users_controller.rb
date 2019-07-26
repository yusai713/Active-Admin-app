class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def search
    user_search = UserSearch.new(params_user_search)
    @users = user_search.execute
  end

  def mark; end

  def chart
    gon.labels =  ["東京 ", "埼玉", "沖縄", "愛知", "千葉", "神奈川", "福岡"]
    gon.scores = [7.3, 2.8, 2.6, 2.4, 1.6, 1.5, 0.4]
  end

  private

  def params_user_search
    params.permit(:search_name, :search_age, :search_address)
  end
end
