# frozen_string_literal: true

class App
  get '/login' do
    'login'
  end

  get '/register' do
    'register plz'
  end

  post '/register' do
    pp params
  end
end
