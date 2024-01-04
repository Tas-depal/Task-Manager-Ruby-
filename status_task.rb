$LOAD_PATH << '.'
class StatusTask
	def initialize(task)
		@task=task
  end
	def status_task  
		puts("\n\nEnter the id of the task to be marked as completed: \n\n")
		taskId = gets.chomp.to_i
		if(taskId>=@task.length)
			puts("\n\nNo such id exists\n\n")
		else
			@task[taskId][2]="Completed"
			puts("\n\nTask marked as completed\n\n")
		end
	end
end