# frozen_string_literal: true

class App
  get '/', auth: true do
    redirect('/login') unless logged_in?

    'Hello home'
  end
end
