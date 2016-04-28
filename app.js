var app = require('app');
var bw = require('browser-window');

app.on('ready', function(){
	var mainWindow = new bw({
		width: 635,
		height: 700
	});
	mainWindow.loadURL("file://" + __dirname + "/views/index.html");
})
