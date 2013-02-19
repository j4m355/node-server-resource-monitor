task :install => [:npm]
task :default => [:runProgram]
task :build => [:stopService, :npm, :startService]

task :npm do
    sh "echo downfall | sudo -S npm install"
end

task :stopService do
    sh "echo downfall | sudo -S service worker-kue stop"
end

task :startService do
    sh "echo downfall | sudo -S service worker-kue start"
end

task :updateCode do
    sh "git checkout master"
    sh "git pull origin master"
end

task :runProgram do
  sh "node index.js"
end





