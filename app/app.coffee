settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :
###


exec = require('child_process').exec


topProcess = () ->
	exec "top -b -n 1", (error, stdout, stderr) ->
		debugger
		console.log stdout
		topProcess()


topProcess()






