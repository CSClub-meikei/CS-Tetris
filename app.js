var app = require('app');
var bw = require('browser-window');

app.on('ready', function(){
	var mainWindow = new bw({
		width: 800,
		height: 600
	});
	mainWindow.loadUrl("file://" + __dirname + "/index.html");
})
