settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :
###

express = require('express')
app = express()
exec = require('child_process').exec
#TopProcess = require('./functions/TopProcess/TopProcess')

TopProcess = () ->
	exec "top -b -n 1", (error, stdout, stderr) ->
		debugger		
		return new Buffer(stdout)
	
app.get('/top', (req,res) ->
	res.set('Content-Type', 'application/json')
	exec "top -b -n 1", (error, stdout, stderr) ->
		res.send stdout
	)

app.listen(3000);
console.log('Listening on port 3000');




