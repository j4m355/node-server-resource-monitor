settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :
###
exec = require('child_process').exec
Seq = require('seq')

Seq().seq(->
  job.progress(1, 7)
  exec "top", (error, stdout, stderr) ->
  	console.log stdout
).catch((err)->
  if err.stack 
    console.log err.stack 
  else 
    console.log err
)the 