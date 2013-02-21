settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :
###
exec = require('child_process').exec
Seq = require('seq')

Seq()
.seq(->
	exec "top", (error, stdout, stderr) ->
		debugger
		console.log stdout
	this
).catch((err)->
	if err.stack 
		console.log err.stack 
	else 
		console.log err)