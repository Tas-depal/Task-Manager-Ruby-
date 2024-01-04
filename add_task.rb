$LOAD_PATH << '.'
class AddTask
	def initialize(task)
		@task=task
  end
	def add_task
		arr=[]
		begin
			puts("\n\nEnter the title of task: ")
			taskTitle = (gets.chomp).upcase
			if taskTitle.empty?
				raise "Empty title"
			end	
			arr.append(taskTitle)
		rescue
			puts("\nEmpty title!!\n")
			retry
		end

		begin
			puts("\n\nEnter the description of task:")
			taskDesc = gets.chomp
			if taskDesc.empty?
				raise "Empty Descrition"
			end	
			arr.append(taskDesc)									
		rescue
			puts("\nEmpty Descrition!!\n")
			retry
		end	
		arr.append("Pending")
		@task.append(arr)

		puts("\n\nTask added successfully!!\n\n")
	end
end
