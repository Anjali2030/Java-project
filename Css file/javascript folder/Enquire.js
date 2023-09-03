var i;
var Image;
var value;
var id;
var id1;
//var val;
var value;
//var input_value;
//var get_value;
var g,g1;
var sts=0;
function change(id) {
    value = document.getElementById(id).src;
    //get_value=id;
   
    localStorage.setItem('aValue', value); 
   
   // window.location.href = "Navbar.jsp"; 
    
}

function get_search_item()
 {
	localStorage.setItem('aValue',null);
	
   var val=document.getElementById("input-box").value.trim();
   

/******************** */
if (val=="Apple") {  
	var im = 'Images/fruit' + 1 + '.png';
	g = 21;
        g1 = 24;
        localStorage.setItem('aValue', im);
        
           
}
/******* */
if (val=="Banana") {  
	var im = 'Images/fruit' + 2 + '.png';
	//g = 29;
      //  g1 = 32;
        localStorage.setItem('aValue', im);
        
       // localStorage.setItem('aValue', im);
   
}
/**** ***************/
if (val=="Peach") {  
	var im = 'Images/fruit' + 3 + '.png';
	localStorage.setItem('aValue', im);
   
}
/************ */
if (val=="Pomegranate") {  
	var im = 'Images/fruit' + 4 + '.png';
	 localStorage.setItem('aValue', im);
    }
   

/*************** */
if (val=="Oranges") {  
	var im = 'Images/fruit' + 5 + '.png';
	localStorage.setItem('aValue', im);
    }
   

/**************** */
if (val=="Mango") 
{  
	var im = 'Images/fruit' + 6 + '.png';
 localStorage.setItem('aValue', im);
   
}
/********** */
if (val=="Pear") {  
	var im = 'Images/fruit' + 7 + '.png';
	
	 localStorage.setItem('aValue', im);
   
}
/************** */
if (val=="Galia") {  
	var im = 'Images/fruit' + 8 + '.png';
	 localStorage.setItem('aValue', im);
   
}
/************* */
if (val=="Strawberry") {  
	var im = 'Images/fruit' + 9 + '.png';
	 localStorage.setItem('aValue', im);
   
}
/********** */
if (val=="Guava") {  
	var im = 'Images/fruit' + 10 + '.png';
	localStorage.setItem('aValue', im);
   
}
/********* */
if (val=="Watermelon") {  
	var im = 'Images/fruit' + 11 + '.png';
	 localStorage.setItem('aValue', im);
	
   
}
/************** */
if (val=="Lemon") {  
	var im = 'Images/fruit' + 15 + '.png';
	 localStorage.setItem('aValue', im);
   
}
/********** */
if (val=="Almond") {  
	var im = 'Images/fruit' + 12 + '.png';
	  localStorage.setItem('aValue', im);
   
}
/********** */
if (val=="Nuts") {  
	var im = 'Images/fruit' + 16 + '.png';
	
	 localStorage.setItem('aValue', im);
   
}
/******* */
if (val=="Date") {  
	var im = 'Images/fruit' + 17 + '.png';
	   localStorage.setItem('aValue', im);
   
}
/***** */
if (val=="Cashew") {  
	var im = 'Images/fruit' + 18 + '.png';
	
}

localStorage.setItem('inputvalue',val);

}
//function for Enquire.html page to change image//
function fun1() {
    Image = document.getElementById('MainImage');
    //alert(localStorage.getItem('aValue'));
    Image.src = localStorage.getItem('aValue');
    //localStorage.setItem('aValue',null)
}




/*************************************Change big image*************************************************************************** */

function fun2(id) {      
   
   
    localStorage.setItem('vgid', id)
	//localStorage.setItem('status',1);
	
}


   
function search_id()
{
	var id=document.getElementById("input-box").value.trim();
	localStorage.setItem('vgid',id);
}   


function fun3() {
   
    
    val=localStorage.getItem('vgid');
  //alert(val);
    
    if (val == 'Apple') {
        g = 21;
        g1 = 24;
    }
    if (val == 'Banana') {
        g = 29;
        g1 = 32;
    }
    if (val == 'Peach') {
        g = 25;
        g1 = 28;
    }
    if (val == 'Pomegranate') {
        g = 33;
        g1 = 36;
    }
    if (val == 'Orange') {
        g = 37;
        g1 = 40;
    }
    if (val == 'Mango') {
        g = 41;
        g1 = 44;
    }
    if (val == 'Pear') {
        g = 57;
        g1 = 60;
    }
    if (val == 'Galia') {
        g = 45;
        g1 = 48;
    }
    if (val == 'Strawberry') {
        g = 49;
        g1 = 52;
    }
    if (val == 'Guava') {
        g = 61;
        g1 = 64;
    }
    if (val == 'Watermelon') {
        g = 65;
        g1 = 68;
    }
    if (val == 'Lemon') {
        g = 53;
        g1 = 56;
    }
    if (val == 'Almond') {
        g = 69;
        g1 = 72;
    }
    if (val == 'Nuts') {
        g = 73;
        g1 = 76;
    }
    if (val == 'Date') {
        g = 77;
        g1 = 80;
    }
    if (val == 'Cashew') {
        g = 81;
        g1 = 84;
    }
    for (i = g, j = 2; i <= g1, j <= 5; i++, j++) {
        var im = 'Images/fruit' + i + '.png';
        localStorage.setItem('avalue' + i, im);
        var k = document.getElementById('img' + j);
        k.src = localStorage.getItem('avalue' + i);
    }
 }
 /**************************** */
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













