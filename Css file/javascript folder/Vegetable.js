var i;
var Image;
var value;
var id;
var val;


function change(id) {
    value = document.getElementById(id).src;
    localStorage.setItem('aValue', value); 
    
}
//function for Enquire.html page to change image//
function function1() {
    Image = document.getElementById('MainImage');
    Image.src = localStorage.getItem('aValue');
}
/*************************************Change big image*************************************************************************** */

function function2(id) {
    localStorage.setItem('vgid', id)
	
}
function function3() {
     val = localStorage.getItem('vgid');
    
    if (val == 'Onion') {
        g = 1;
        g1 = 4;
    }
    if (val == 'Jinger') {
        g = 5;
        g1 = 8;
    }
    if (val == 'Tomato') {
        g = 9;
        g1 = 12;
    }
    if (val == 'Potato') {
        g = 13;
        g1 = 16;
    }
    if (val == 'Carrot') {
        g = 17;
        g1 = 20;
    }
    if (val == 'Radish') {
        g = 21;
        g1 = 24;
    }
    if (val == 'Turnip') {
        g = 25;
        g1 = 28;
    }
    if (val == 'Garlic') {
        g = 29;
        g1 = 32;
    }
    if (val == 'Cauliflower') {
        g = 33;
        g1 = 36;
        
    }
    if (val == 'Broccoli') {
        g = 37;
        g1 = 40;
    }
    if (val == 'Cabbage') {
        g = 41;
        g1 = 44;
    }
    if (val == 'Collarde') {
        g = 45;
        g1 = 48;
    }
    
   
    for (i = g, j = 2; i <= g1, j <= 5; i++, j++) {
        var im = 'Images/V' + i + '.png';
        localStorage.setItem('avalue' + i, im);
        var k = document.getElementById('img' + j);
        k.src = localStorage.getItem('avalue' + i);
    }
 }



var Smallimg = document.getElementsByClassName("small_img");

if (Smallimg.length >= 4) {
  Smallimg[0].onclick = function () {
      document.getElementById("MainImage").src = Smallimg[0].src;
  }
  
  Smallimg[1].onclick = function () {
      document.getElementById("MainImage").src = Smallimg[1].src;
  }
  
  Smallimg[2].onclick = function () {
      document.getElementById("MainImage").src = Smallimg[2].src;
  }
  
  Smallimg[3].onclick = function () {
      document.getElementById("MainImage").src = Smallimg[3].src;
  }
  
}