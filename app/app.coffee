settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :
###
exec = require('child_process').exec

exec "top", (error, stdout, stderr) ->
	debugger
	console.log stdout
