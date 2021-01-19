Rails.application.routes.draw do
  root 'home#coming_soon'
  get 'contact', to: "home#contact"
  get 'about_us', to: "home#about_us"
  get 'services', to: "home#services"
 # get "/unsubscribe/random_email/:id", to: "unsubscribe_emails#random_email", as: :random_entry_unsubscribe

end
