require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    new_pig = PigLatinizer.new
    @letter = new_pig.piglatinize(params[:user_phrase])
    erb :piglatinize_output
  end
end
