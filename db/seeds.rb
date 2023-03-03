puts "seeding users"
# Create 5 users
user_names = ["Alice", "Bob", "Charlie", "David", "Eve"]
user_emails = ["alice@example.com", "bob@example.com", "charlie@example.com", "david@example.com", "eve@example.com"]
user_password = "password"

user_names.each_with_index do |name, i|
  User.create(name: name, email: user_emails[i], password: user_password)
end

puts "seeding tasks"
# Create 5 tasks
task_activities = ["Buy groceries", "Clean the house", "Take out the trash", "Do laundry", "Walk the dog"]

task_activities.each do |activity|
  Task.create(activity: activity)
end

puts "assigning tasks randomly"
# Share some tasks among users
Task.all.each do |task|
  # Randomly assign 2 users to each task
  users = User.all.sample(2)
  task.users << users
  # Create shared tasks
  sharedtask = users.map do |user|
    SharedTask.create(user_id: user.id, task_id: task.id)
  end
end

puts "seeds created successfully"
