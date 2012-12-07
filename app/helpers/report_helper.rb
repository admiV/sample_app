module ReportHelper
  def save(upload)
    source_file_name =  upload['datafile']
	stripped_file_name = source_file_name.original_filename
    directory = "public/data"
	
    # create the file path
	path = Rails.root.join(directory, stripped_file_name)
	
    # write the file	
	File.open(path, 'wb') do |file|
    file.write(source_file_name.read)
	end
  end
end
