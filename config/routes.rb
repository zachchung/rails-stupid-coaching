Rails.application.routes.draw do
  # questions_controller: ask action -> "/"
  root to: 'questions#ask'
  get 'askme', to: 'questions#ask'
  # questions_controller: answer action -> "/answer" view
  get 'answer', to: 'questions#answer'
end
