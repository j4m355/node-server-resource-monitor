##Node Process Top

This 'tool' allows you to easily keep an eye on the current resource utilisation on your linux server.

##What it does
Executes ```top``` on the linux server.

#Options
If you just want a one off read out of the current resource utilsation simple fire a single ```GET``` request to ```/top```.
Http returns a 'json' document - its not actually formatted json but it just worked well to give it a mime type of ```application/json```.

You can also run this tool as a site with a ui by just navigating to the root of the app ```/``` - this ui will fire an ajax ```GET``` request on a 3 second interval and update the ui - similar to how ```top``` behaves in the terminal.

Its useful for me.....maybe for someone else too.



Return json for the current running processes on the server - works with ubuntu

Executes 'top' and returns the result as json

##Install
#Terminal

```git clone```

```npm install```

```node index.js```

#Browser
```http://localhost:3000/``` or ```http://localhost:3000/top```

