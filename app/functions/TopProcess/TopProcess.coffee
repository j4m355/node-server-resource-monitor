exec = require('child_process').exec

module.exports =  (cb) ->
	exec "top -b -n 1", (error, stdout, stderr) ->
		debugger
		console.log stdout		
		cb(new Buffer(stdout))
		return