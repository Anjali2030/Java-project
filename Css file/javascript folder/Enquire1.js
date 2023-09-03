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
    
    if (val == 'Harvester') {
        g = 1;
        g1 = 4;
    }
    if (val == 'Planting') {
        g = 5;
        g1 = 8;
    }
    if (val == 'SeedDrill') {
        g = 9;
        g1 = 12;
    }
    if (val == 'RigidTiller') {
        g = 46;
        g1 = 49;
    }
    if (val == 'BoomSpray') {
        g = 13;
        g1 = 16;
    }
    if (val == 'Miniround') {
        g = 17;
        g1 = 20;
    }
    if (val == 'Rotavator') {
        g = 21;
        g1 = 24;
    }
    if (val == 'RiceCombine') {
        g = 25;
        g1 = 28;
    }
    if (val == 'DeereTractor') {
        g = 29;
        g1 = 32;
        
    }
    if (val == 'KubotaTractor') {
        g = 33;
        g1 = 36;
    }
    if (val == 'Mahindra') {
        g = 38;
        g1 = 41;
    }
    if (val == 'JivoTractor') {
        g = 42;
        g1 = 45;
    }
    
   
    for (i = g, j = 2; i <= g1, j <= 5; i++, j++) {
        var im = 'Images/M' + i + '.png';
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