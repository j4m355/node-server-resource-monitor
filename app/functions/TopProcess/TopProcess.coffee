exec = require('child_process').exec

module.exports =  () ->
	exec "top -b -n 1", (error, stdout, stderr, cb) ->
		debugger
		console.log stdout
		colour = new Buffer(stdout).toString()
		return