class ApplicationController < Sinatra::Base
    set :default_content_type, "application/json"

    get "/task" do
        task = Task.all
        task.to_json
    end

    get "/task/:id" do
            task = Task.find(params[:id])
            task.to_json
          end

          post "/task" do
                tasks = Task.create(
                activity: params[:activity]
                
                )
                tasks.to_json
            end

             delete "/task/:id" do
        tasks = Task.find(params[:id])
        tasks.destroy
        tasks.to_json
    end

    
      
    
end