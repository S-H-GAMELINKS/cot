class Todo < ApplicationRecord

    def self.today_tasks
        Todo.where(:done => false, :date => Date.today)
    end
end
