Rails.application.routes.draw do
  root 'home#index'
  get 'contact-us', to: "home#contact_us"
  get 'about-us', to: "home#about_us"
  get 'services', to: "home#services"
  get 'testimonials', to: "home#testimonials"
 # get "/unsubscribe/random_email/:id", to: "unsubscribe_emails#random_email", as: :random_entry_unsubscribe

end
