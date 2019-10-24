class Todo < ApplicationRecord

    def self.today_tasks
        Todo.where(:date => Date.today)
    end
end
