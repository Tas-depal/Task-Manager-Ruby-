$LOAD_PATH << '.'
class DeleteTask
	def initialize(task)
		@task=task
  end
	def del_task
		puts("\n\nEnter the id of the task to be deleted: \n\n")
		taskId = gets.chomp.to_i
		if(taskId>=@task.length)
			puts("\n\nNo such id exists\n\n")
		else
			@task.delete_at(taskId)
			puts("\n\nTask deleted successfully!!\n\n")
		end
	end
end