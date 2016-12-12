Rails.application.routes.draw do
	resources :pages do
		resources :comments, module: :pages
	end
	
	resources :posts do
		resources :comments, module: :posts
	end
end
