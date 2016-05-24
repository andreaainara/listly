Rails.application.routes.draw do
  root 'site#angular'

  # api/ urls and default to JSON
  scope '/api', defaults: { format: :json } do
    resources :lists, except: [:new, :edit] do
      resources :items, except: [:new, :edit]
    end
  end

  get '*path', to: 'site#angular'
end
