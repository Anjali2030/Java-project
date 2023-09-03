var closeBtn = document.querySelector('.close-btn');
var sellPopup = document.getElementById('sell-popup');

closeBtn.addEventListener('click', function () {
    sellPopup.style.display = 'none';
});

function validation() {
   // var Pname = document.getElementById('P_name').value;
    var Pspecification = document.getElementById('P_specify').value;
    var Productquantity = document.getElementById('P_quantity').value;
    var Productprice = document.getElementById('P_price').value;
    var Productstock = document.getElementById('P_stock').value;
    var Pdiscription = document.getElementById('Discription').value;

    


    /*************************** */
    if (Pspecification == "") {
        document.getElementById('specify').innerHTML = "*Please specify the product";
        return false;
    }
    if (Pspecification.includes(".")) {
        document.getElementById('specify').innerHTML = ". is not allowed";
        return false;
    }
    if (Pspecification.length <= 3) {
        document.getElementById('specify').innerHTML = "*length is short";
        return false;
    }
    else {
        document.getElementById('specify').innerHTML = "";
    }
    /******************************************** */
    if (Productquantity == "") {
        document.getElementById('quantity').innerHTML = "*Please specify the product quantity";
        return false;
    }
    if (Productquantity.includes(".")) {
        document.getElementById('quantity').innerHTML = ". is not allowed";
        return false;
    }
    if (Productquantity.length <= 1) {
        document.getElementById('quantity').innerHTML = "*length is short";
        return false;
    }
    else {
        document.getElementById('quantity').innerHTML = "";
    }
    /***************** */
    if (Productprice == "") {
        document.getElementById('price').innerHTML = "*Please specify the product price";
        return false;
    }
    if (Productprice.includes(".")) {
        document.getElementById('price').innerHTML = ". is not allowed";
        return false;
    }
    if (isNaN(Productprice)) {
        document.getElementById('price').innerHTML = "*Please write digits only";
        return false;
    }
    if (Productprice.length < 3) {
        document.getElementById('price').innerHTML = "*Specify the proper price";
        return false;
    }
    else {
        document.getElementById('price').innerHTML = "";
    }
    /******************** */
    if(Productstock==""){
		document.getElementById('stock').innerHTML = "*Please specify the Stock";
		return false;
	}
	if(isNan(Productstock)){
		document.getElementById('stock').innerHTML="*Please write digits only";
		return false;
	}
	else{
		document.getElementById('stock');
	}
	
    /********* */
    if (Pdiscription == "") {
        document.getElementById('disc').innerHTML = "*Please write the discription";
        return false;
    }
    else {
        document.getElementById('disc').innerHTML = "";
    }
    console.log("validation success");
    
}


