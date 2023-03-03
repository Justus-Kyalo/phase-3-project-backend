class Task<ActiveRecord::Base
    has_many :sharedTasks
    has_many :users ,through: :sharedTasks
end