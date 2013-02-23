settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :
###

express = require('express')
app = express()
TopProcess = require('./functions/TopProcess/TopProcess')


	
app.get('/top', (req,res) ->
	#res.set('Content-Type', 'text/html');
	cunt = TopProcess().stdout
	debugger	
	console.log cunt

	res.send(new Buffer(cunt))
	)

app.listen(3000);
console.log('Listening on port 3000');




