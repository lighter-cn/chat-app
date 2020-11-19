Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # ルートパスへのアクセスが有った場合、messagesコントローラーのindexアクションを呼ぶ
  root to: "rooms#index"

  # resourcesでルーティングを自動設定
  # resources パスのシンボル, onlyオプション
  resources :users, only: [ :edit, :update]

  resources :rooms, only: [ :new, :create]
end
