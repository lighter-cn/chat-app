class UsersController < ApplicationController
  # viewを送るだけなのでactionの中は空
  def edit
  end

  def update
    # current_userメソッドでログインしているユーザーの情報を取得
    if current_user.update(user_params)
      redirect_to root_path
    else
      # renderメソッドでeditアクションを指定
      render :edit
    end
  end

  private

  # ストロングパラメータ
  def user_params
    # edit.html.erbから送られてきたパラメータ
    # requireメソッドでパラメータからどの情報を取得するか選択する。
    # requireの指定は主にモデル名を指定する
    # permitメソッドはparamsが使用できるメソッドで、取得したいキーを指定するとそのキーと値を取得できる。
    params.require(:user).permit(:name, :email)
  end
end
