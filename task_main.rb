$LOAD_PATH << '.'
require "add_task.rb"
require "list_task.rb" 
require "status_task.rb" 
require "del_task.rb"  
require "csv_export.rb"  
require "title_search.rb"  

class TaskMain
	def initialize
		@task=[]
  end
	def task_main
		puts("WELCOME TO TASK MANAGER..")
		while true
			puts('1: Add a task')
			puts('2: List tasks')
			puts('3: Mark a task as complete')
			puts('4: Delete a task')
			puts('5: Export All task to CSV')
			puts('6: Search A Task by Title')
			puts('7: Exit')
			puts("\n\nEnter your choice:\n\n")
			inp = gets.chomp.to_i
			case inp
				when 1 
					add= AddTask.new(@task)         
					add.add_task
				when 2
					list= ListTask.new(@task) 
					list.list_task
				when 3
					status = StatusTask.new(@task) 
					status.status_task
				when 4
					dlt = DeleteTask.new(@task) 
					dlt.del_task
				when 5
					expCsv = ExportCsv.new(@task) 
					expCsv.export_csv
				when 6
					search = TitleSearch.new(@task) 
					search.title_search
				when 7
					puts("\n\nGoodbyee!!\n\n")
					break
				else
					puts("\n\nWrong choice entered!!Please try again...\n\n")
			end
		end
	end
end
taskMain =TaskMain.new
taskMain.task_main