class ApplicationController < Sinatra::Base
    set :default_content_type, "application/json"

    get "/task" do
        task = Task.all
        task.to_json
    end

    
      
    
end