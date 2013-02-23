settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :
###


exec = require('child_process').exec

exec "top -b", (error, stdout, stderr) ->
	debugger
	console.log stdout
	console.log stderr






