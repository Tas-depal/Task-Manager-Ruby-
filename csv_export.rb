$LOAD_PATH << '.'
require 'csv'
class ExportCsv
	def initialize(task)
		@task=task
  end
	def export_csv
		j=0
		CSV.open("./taskManager.csv","w") do |tasks|
			tasks << ["ID","Tittle","Description","Status"]
			@task.each do |task1|
				tasks << [j , task1[0] , task1[1] , task1[2]]
				j+=1
			end
			puts("\n\nTasks exported to csv successfully!!\n\n")
		end
	end
end