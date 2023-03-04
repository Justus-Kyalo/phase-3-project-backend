class ApplicationController < Sinatra::Base
    # Set the default content type for all responses to be JSON.
    set :default_content_type, "application/json"
  
    # GET all tasks.
    get "/task" do
      # Get all tasks from the database.
      task = Task.all
      # Convert the task data to JSON format.
      task.to_json
    end
  
    # GET a specific task by ID.
    get "/task/:id" do
      # Find the task with the given ID in the database.
      task = Task.find(params[:id])
      # Convert the task data to JSON format.
      task.to_json
    end
  
    # POST a new task.
    post "/task" do
      # Create a new task with the activity provided in the request parameters.
      tasks = Task.create(
        activity: params[:activity]
      )
      # Convert the new task data to JSON format and return it.
      tasks.to_json
    end
  
    # DELETE a task by ID.
    delete "/task/:id" do
      # Find the task with the given ID in the database.
      tasks = Task.find(params[:id])
      # Destroy the task, removing it from the database.
      tasks.destroy
      # Convert the task data to JSON format and return it.
      tasks.to_json
    end
  
    # PATCH (update) a task by ID.
    patch "/task/:id" do
      # Find the task with the given ID in the database.
      task = Task.find(params[:id])
      # Update the activity of the task with the value provided in the request parameters.
      task.update(activity: params[:activity])
      # Convert the updated task data to JSON format and return it.
      task.to_json
    end
    
  end
  