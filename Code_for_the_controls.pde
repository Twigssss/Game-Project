document.addEventListener("keydown", keyDownHandler, false);
document.addEventListener("keyup", keyUpHandler, false);

let rightPressed= false;
let leftPressed= false;
let upPressed= false;
let downPressed= false;

function keyDownhandler(event){
  if(event.keyCode === 39){
    rightPressed = true;
  } else if (event.keyCode === 37){
    leftPressed = true;
  }
  if (event.keyCode === 40){
    downPressed = true;
  } else if (event.keyCode === 38){
  upPressed = true;
  }
}
function draw(){
  ctx.clearRect(0,0, canvas.width, canvas.height);
  if (rightPressed){
    playerX += 5;
  } else if (leftPressed){
    playerX -= 5;
  }
  
  if (downPressed){
    playerY += 5;
  } else if (upPressed){
    playerY -= 5;
  }
  
  ctx.drawImage(img, playerX, playerY);
  requestAnimationFrame(draw);
}
