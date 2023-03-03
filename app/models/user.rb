class User<ActiveRecord::Base
has_many :sharedTasks
has_many :tasks,through: :sharedTasks
end