require './config/environment'
require './app/models/sample_model'


class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  post '/results' do
#    @happy = params["Happy"]
    # @mood = params["moodChoice"]
    # @changer = moodChange(@mood)
    @frustration = params["frustrationMeasure"]
    @energy = params["energyMeasure"]
    @anxiety = params["anxietyMeasure"]
    @great = params["greatMeasure"]
    @color = params["colorMeasure"]
    @laugh = params["laughMeasure"]
    @points = questionOne(@frustration)
    @points = @points + questionTwo(@energy)
    @points = @points + questionThree(@anxiety)
    @points = @points + questionFour(@great)
    @points = @points + questionFive(@color)
    @points = @points + questionSix(@laugh)
   
   #the point system is slightly inaccurate. If you want happy put 1 for everything. Sad you get 2 for everything. Angry put 3 for everything
    if @points <= 6
      return erb :happy
    end
    
    if @points > 6 && @points <= 12
      return erb :sad
    end 
    
    if @points >= 13
      return erb :angry
    end
    

 #   return erb :results
 
  end
end


  
