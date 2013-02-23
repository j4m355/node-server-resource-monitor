task :install => [:npm]
task :default => [:runProgram]
task :build => [:stopService, :npm, :startService]

task :npm do
    sh "npm install"
end

task :stopService do
end

task :startService do
end

task :runProgram do
  sh "node index.js"
end





