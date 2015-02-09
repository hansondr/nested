Rails.application.routes.draw do
  resources :careers, only: [:index, :show, :new, :create, :destroy] do
    resources :job_applications, only: [:new, :create]
  end

  resources :job_applications, only: [:index, :show, :destroy]
end
