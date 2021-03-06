class UsersController < ApplicationController
  # 一覧画面に対応するアクション
  def index
    @users = User.all
  end
  # 新規作成画面に対応したアクション
  def new
    @user = User.new
  end
  # 新規登録するためのアクション
  def create
     User.create(user_params)
  end
    # 詳細情報を表示するためのアクション
  def show
    @user = User.find(params[:id])
  end
  # 編集画面に対応するアクション
  def edit
    @user = User.find(params[:id])
  end
  # 更新に対応するアクション
  def update
    user = User.find(params[:id])
    user.update(user_params)
  end
  # 削除を実行するためのアクション
  def destroy
    user = User.find(params[:id])
    user.delete
  end

  private

  def user_params
    params.require(:user).permit(:name,:age)
  end
end
