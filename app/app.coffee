settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :
###

express = require('express')
app = express()
exec = require('child_process').exec

app.engine('jade', require('jade').__express);



app.set('view options',
  layout: false
)

app.get('/', (req, res)->
	res.render(__dirname + '/views/top.jade')
	)
	
app.get('/top', (req,res) ->
	res.set('Content-Type', 'application/json')
	exec "top -b -n 1", (error, stdout, stderr) ->
		res.send stdout
	)

app.use(express.static(__dirname + '/public'));

app.listen(3000)
console.log('Listening on port 3000')




