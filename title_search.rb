$LOAD_PATH << '.'
class TitleSearch
	def initialize(task)
		@task=task
  end
	def title_search
		puts("Enter the title to be searched: ")
		taskTitle = (gets.chomp).upcase
		i=0
		puts "Id | Title | Description | Task"
		k=0
		@task.each do |tasks|
			if(tasks[0].include?taskTitle)
				print(i.to_s+"\t")
				tasks.each do |task1|
					print(task1+"\t")
				end
				print("\n")
				i+=1				
			end
		end		
	end
end