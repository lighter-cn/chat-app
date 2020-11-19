Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # ルートパスへのアクセスが有った場合、messagesコントローラーのindexアクションを呼ぶ
  root to: "messages#index"
end
