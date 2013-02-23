

module.exports =  () ->
	exec "top -b -n 1", (error, stdout, stderr) ->
		debugger
		console.log stdout	