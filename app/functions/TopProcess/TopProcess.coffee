exec = require('child_process').exec

module.exports =  () ->
	exec "top -b -n 1", (error, stdout, stderr, cb) ->
		debugger
		console.log stdout		
		cb(new Buffer(stdout))
		return