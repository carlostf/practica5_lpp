task :default => :test

desc "Realiza los tests"
task :test do

   sh "ruby -Ilibs test/tc_rps.rb"

end

desc "Ejecuta un test especifico"
task :t, :test_name do|t,args|
	test_name = args[:test_name] || 'test_play'
	sh "ruby -w -Ilibs test/tc_rps.rb --name" #{test_name}"
end