class UsersController < ActionController::Base
    def index
    # params["id"]
    @users = User.all
    end

  def show
    # params["id"]
    @user = User.find(params["id"])
  end
end