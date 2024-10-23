function phonenum() {
	 var phn = document.getElementById("phone").value;
	 var phnlen=phn.length;
	 var schar=phn.charAt(0);
	 if(schar <6){
		 alert("Enter the standard number");
		 document.getElementById("phone").value="";
		 document.getElementById("phone").focus(); 
	 }
	 else if(phnlen!=10 || phnlen < 10){
		 alert("Enter the valid number");
		 document.getElementById("phone").value="";
		 document.getElementById("phone").focus();
		 
	 }
}


function calprice(){
	var bsq = document.getElementById("basequantity").value;
	var bsp = document.getElementById("baseprice").value;
	var qua = document.getElementById("quantity").value;
	if(qua<=0){
		alert("Enter the valid quantity");
		document.getElementById("quantity").value="";
		document.getElementById("quantity").focus();
		
	}
	else if(parseInt(qua)>parseInt(bsq)){
		alert("Sorry the stock available is "+bsq);
		document.getElementById("quantity").value="";
		document.getElementById("quantity").focus();
		
	}else{
		var totalPrice=parseInt(qua)*parseInt(bsp);
		document.getElementById("totalPrice").value=totalPrice;
	}
}