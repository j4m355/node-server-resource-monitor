settings = require(__dirname + '/config/config')(__dirname + "/config/settings.json")

###
START APPLICATION NOW :

exec = require('child_process').exec

exec "top", (error, stdout, stderr) ->
	debugger
	console.log stdout
###


spawnVim = (file, cb) ->
  indata = (c) ->
    top.stdin.write c
  outdata = (c) ->
    process.stdout.write c
  top = child_process.spawn("top")
  process.stdin.resume()
  process.stdin.on "data", indata
  top.stdout.on "data", outdata
  tty.setRawMode true
  top.on "exit", (code) ->
    tty.setRawMode false
    process.stdin.pause()
    process.stdin.removeListener "data", indata
    top.stdout.removeListener "data", outdata
    cb code

tty = require("tty")
child_process = require("child_process")
fs = require("fs")
filename = "/tmp/somefile.txt"
spawnVim filename, (code) ->
  if code is 0
    fs.readFile filename, (err, data) ->
      console.log data.toString()  unless err


