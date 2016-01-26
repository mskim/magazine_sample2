task :default => :pdf

md_files = FileList["**/*.md", "**/*.markdown"]
source_files = FileList["**/*.md", "**/*.markdown", "**/layout.rb"]

task :pdf => source_files.map {|source_file| File.dirname(source_file) + "/output.pdf" }

source_files.each do |source_file|
  pdf_file = File.dirname(source_file) + "/output.pdf"
  file pdf_file => source_file do
    sh "/Applications/magazine.app/Contents/MacOS/magazine  #{File.dirname(source_file)}"
  end
end

task :force do
	md_files.each do |md_file|
		sh "/Applications/magazine.app/Contents/MacOS/magazine  #{File.dirname(md_file)}"
	end
end

task :merge_pdf do
	sh "/Applications/magazine.app/Contents/MacOS/magazine  merge_pdf #{File.dirname(__FILE__)}"
end
