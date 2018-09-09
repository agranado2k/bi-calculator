Rails.application.routes.draw do
  patch 'differentiate/*polynomio', to: 'differentiate#derive'
end
