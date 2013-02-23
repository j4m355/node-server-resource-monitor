settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :
###

express = require('express')
app = express()
TopProcess = require('./functions/TopProcess/TopProcess')


	
app.get('/top', (req,res) ->
	cunt = TopProcess()
	debugger
	
	sendy = JSON.parse(cunt.stdout)
	console.log sendy
	res.send sendy
	)

app.listen(3000);
console.log('Listening on port 3000');




