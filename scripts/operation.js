// Generated by CoffeeScript 1.10.0
var blocks, degValue, test;

blocks = [];

test = 0;

degValue = 0;

$(document).on("ready", function() {
  var timer;
  test = new TetriminoRed;
  timer = setInterval((function() {
    return test.move(30, 0);
  }), 500);
});

$(window).on("keydown", function(e) {
  if (e.keyCode === 40) {
    return test.move(30, 0);
  } else if (e.keyCode === 39) {
    return test.move(0, 30);
  } else if (e.keyCode === 37) {
    return test.move(0, -30);
  } else if (e.keyCode === 32) {
    if (degValue < 270) {
      return test.rotate(degValue += 90);
    } else {
      test.rotate(0);
      return degValue = 0;
    }
  }
});
