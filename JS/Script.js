function isInputNumber(evt) {
    var str = document.getElementById("phone").value;
    var ch = String.fromCharCode(evt.which);
    if(!(/[0-9]/.test(ch))) {
        evt.preventDefault();
    }
    if (str.length==10) {
        if(str.charAt(0)=="6" || str.charAt(0)=="7" || str.charAt(0)=="8" || str.charAt(0)=="9") {
            document.getElementById("submit").disabled = false;
        }
    }
    else if(str.length>10) {
        document.getElementById("submit").maxlength = "10";
    }
    else {
        document.getElementById("submit").disabled = true;
    }
}
