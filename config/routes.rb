Rails.application.routes.draw do
  resources :users
  resources :courses do
    member do
      get :roll
    end
  end


  resources :students do
    resources :awards

    member do
      get :courses
      post :course_add
      post :course_remove
    end
  end
end
