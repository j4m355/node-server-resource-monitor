#Node Server Resource Monitor

This 'tool' allows you to easily keep an eye on the current resource utilisation on your Linux or Windows server.

##What it does
Executes ```top``` or ```tasklist``` (if windows) on the server and returns the result to any client browser. Useful for keeping an eye on your servers. Looks pretty good on mobiles and tablets too.

![Alt text](/app/public/images/screenshot.png?raw=true "User Interface")

##Options

###Data Only
If you just want a one off read out of the current resource utilsation simple fire a single ```GET``` request to ```/top```.
Http returns a 'json' document - its not actually formatted json but it just worked well to give it a mime type of ```application/json```.

###User Interface
You can also run this tool as a site with a ui by just navigating to the root of the app ```/``` - this ui will fire an ajax ```GET``` request on a 3 second interval and update the ui - similar to how ```top``` behaves in the terminal.


It's useful for me.....maybe for someone else too. Stay off the coke.

##Install
Do this shit:
###Terminal

```git clone```

```npm install```

```node index.js```

###Browser
```http://localhost:3300/``` or ```http://localhost:3300/top```

