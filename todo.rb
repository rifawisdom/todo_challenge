# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #
class TaskController < ActiveRecord::Base
	
	def self.list
        
        Task.all.each do |x|
            puts "#{x.id}  #{x.description}          #{x.status}"
   			 end
	end

    def self.add(todo)
    	task = Task.create(description:todo, status: "undone")
    	
    end

    def self.delete(number)
    	task = Task.find_by(id: number)
    	if task
			task.delete
		else 
			puts "no such file!, please put correct id"
	end
    end

  def self.update(number,todo,current_status)
  	task = Task.find(number)
   task.update(description:todo, status: current_status)
   end
end

if ARGV.any?

        case ARGV[0]
        when "list"
        puts TaskController.list

       
    	when "add"
    	puts TaskController.add ARGV[1..-1].join(" ")
    	
    	
    	when "delete"
    	puts TaskController.delete ARGV[1].to_i

    	when "update"
    	puts TaskController.update ARGV[1].to_i, ARGV[2], ARGV[3]    	

else
	puts "please put instruction"

end
end

	






