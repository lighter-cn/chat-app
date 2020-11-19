Rails.application.routes.draw do
  get 'messages/index'
  # ルートパスへのアクセスが有った場合、messagesコントローラーのindexアクションを呼ぶ
  root to: "messages#index"
end
