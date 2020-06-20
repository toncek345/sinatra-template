# frozen_string_literal: true

class App < Sinatra::Base
  set :root, File.dirname('web')

  enable :sessions
  set :sessions, expire_after: 3600 # seconds
  set :session_secret, 'My session secret'

  configure :development do
    # NOTE: this should also be some mongo testground
    # MongoMapper.setup(
    #   { 'development' => { 'uri' => 'mongodb://localhost:27017' } },
    #   'nj-notif'
    # )
  end

  # configure :production do
  # TODO: never made it to production :D
  # end

  def logged_in?
    return false if session['user_id'].nil?

    true
  end

  set(:auth) do |*args|
    return unless args[0]

    condition do
      redirect('/login') unless logged_in?
    end
  end
end

require_all 'web'
