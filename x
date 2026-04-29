<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>🎨 Palette</title>
<style>
body{background:#111;color:#fff;font-family:Arial;padding:40px;text-align:center;}
#pal{display:flex;justify-content:center;gap:15px;flex-wrap:wrap;}
.box{width:120px;height:120px;border-radius:12px;cursor:pointer;}
</style>
</head>
<body>
<h1>Random Color Palette</h1>
<button onclick="genPalette()">Generate</button>
<div id="pal"></div>
<script>
function randColor(){return '#'+Math.floor(Math.random()*16777215).toString(16).padStart(6,'0');}
function genPalette(){
  const container=document.getElementById('pal');
  container.innerHTML='';
  for(let i=0;i<5;i++){
    const col=randColor();
    const div=document.createElement('div');
    div.className='box';
    div.style.background=col;
    div.title=col;
    div.onclick=()=>navigator.clipboard.writeText(col);
    container.appendChild(div);
  }
}
</script>
</body>
</html>
