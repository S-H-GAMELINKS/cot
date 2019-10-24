namespace :todo do
    desc "Carry Over Task"
    task :carry_over_tasks => :environment do
        @todos = Todo.where('date < ?', Date.today)

        @todos.map{|todo| todo.update(:date => Date.today)}
    end
end
