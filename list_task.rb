$LOAD_PATH << '.'
class ListTask
	def initialize(task)
		@task=task
  end
	def list_task
		i=0
		puts "Id | Title | Description | Status" 
		if(@task.length()==0)
			puts "\n\nNo record found\n\n"                
		else
			@task.each do |tasks|
				print(i.to_s+"\t")
				tasks.each do |task1|
					print(task1+"\t")
				end
				print("\n")
				i+=1
			end 
		end
		puts("\n\n")
	end
end