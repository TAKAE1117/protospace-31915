class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    # @user = Prototype.find                      試行錯誤した記述
    # @user = Prototype.User.find(params[:id])    試行錯誤した記述
    # @user = User.includes(:user)                試行錯誤した記述
    # @user.tweet.all                             試行錯誤した記述
  end
end
