exec = require('child_process').exec

module.exports =  () ->
	exec "top -b -n 1", (error, stdout, stderr) ->
		debugger
		return stdout