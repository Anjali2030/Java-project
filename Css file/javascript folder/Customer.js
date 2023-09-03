function validation() {
    var id = document.getElementById('c_id').value;
    var name = document.getElementById('c_name').value;
    var email = document.getElementById('ei').value;
    var pno = document.getElementById('ph').value;
    var address = document.getElementById('ad').value;
    var password = document.getElementById('pass').value;
    var conpass = document.getElementById('cpass').value;
    
    /*customer_id*/
    if (id == "") {
        document.getElementById('cii').innerHTML = "*Please write username in box";
        return false;

    }
    if (id.length <= 2) {
        document.getElementById('cii').innerHTML = "*Please write more than one character";
        return false;

    }
    
    else {
        document.getElementById('cii').innerHTML = "";
    }
    
    
    
   /*customer name*/  
    
    if (name == "") {
        document.getElementById('cnn').innerHTML = "*Please write username in box";
        return false;

    }
    if (name.length <= 2) {
        document.getElementById('cnn').innerHTML = "*Please write more than one character";
        return false;

    }
    if (!isNaN(name)) {
        document.getElementById('cnn').innerHTML = "*Please write alphabet only";
        return false;

    } 
    else {
        document.getElementById('cnn').innerHTML = "";
    }
    
    /*emailid*/
    if (email == "") {
        document.getElementById('eii').innerHTML = "*Please write valid email";
        return false;

    }
    if (email.indexOf('@') <= 0) {
        document.getElementById('eii').innerHTML = "*invalid position of @";
        return false;
    }
    if (email.charAt(email.length - 4) != '.'
        && email.charAt(email.length - 3) != '.') {
        document.getElementById('eii').innerHTML = "*invalid position of .";
        return false;
    }
    else {
        document.getElementById('eii').innerHTML = "";
    }

    /***** phone number validation****/

    if (pno == "") {
        document.getElementById('phh').innerHTML = "*Please write valid phone number";
        return false;

    }
    if (isNaN(pno)) {
        document.getElementById('phh').innerHTML = "*Please write digits only";
        return false;
    }
    if (pno.length < 10 || pno.length > 10) {
        document.getElementById('phh').innerHTML = "*Please write 10 digits mobile number";
        return false;
    }

    else {
        document.getElementById('phh').innerHTML = "";
    }
    /***Address validation**/

    if (address == "") {
        document.getElementById('add').innerHTML = "*Please write valid address";
    }
    /***Password validation**/
    if (password == "") {
        document.getElementById('pass').innerHTML = "*Please write password";
        return false;
    }
    if (password.length < 5) {
        document.getElementById('pass').innerHTML = "*Please write atleast 5 character password";
        return false;
    }

    if (password.search(/[0-9]/) == -1) {
        document.getElementById('pass').innerHTML = "*Please write atleast 1 numeric character password";
        return false;
    }
    if (password.search(/[!@#$%^&*(+<>:"_?")]/) == -1) {
        document.getElementById('pass').innerHTML = "*Please write atleast 1 special character password";
        return false;
    } else {
        document.getElementById('pass').innerHTML = "";

    }
    /***Confirm password validation**/
    if (conpass != password) {
        document.getElementById('cpasss').innerHTML = "password does not match";
        return false;
    } else {
        document.getElementById('cpasss').innerHTML = "";
    }
    openPopup();
}
function openPopup() {
    document.getElementById("popup").style.display = "block";
}

function closePopup() {
    document.getElementById("popup").style.display = "none";
}
