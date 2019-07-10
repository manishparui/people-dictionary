var udRequest;

function updateData(id){
	var frm = document.frm;
	
	var name = frm.name.value;
	var otherName = frm.otherName.value;
	var dob = frm.dob.value;
	var gender = frm.gender.value;
	var nationality = frm.nationality.value;
	var fatherName = frm.fatherName.value;
	var motherName = frm.motherName.value;
	var profession = frm.profession.value;
	var presentWork = frm.presentWork.value;
	var pastWork = frm.pastWork.value;
	var education = frm.education.value;
	var address = frm.address.value;
	var phno = frm.phno.value;
	var email = frm.email.value;
	var facebook = frm.facebook.value;
	var instagram = frm.instagram.value;
	var twiter = frm.twiter.value;
	var github = frm.github.value;
	var other = frm.other.value;
	
	var url="./../UpdateProfileServ?"+
			"id="+id+
			"&"+"name="+name+
			"&"+"otherName="+otherName+
			"&"+"dob="+dob+
			"&"+"gender="+gender+
			"&"+"nationality="+nationality+
			"&"+"fatherName="+fatherName+
			"&"+"motherName="+motherName+
			"&"+"profession="+profession+
			"&"+"presentWork="+presentWork+
			"&"+"pastWork="+pastWork+
			"&"+"education="+education+
			"&"+"address="+address+
			"&"+"phno="+phno+
			"&"+"email="+email+
			"&"+"facebook="+facebook+
			"&"+"instagram="+instagram+
			"&"+"twiter="+twiter+
			"&"+"github="+github+
			"&"+"other="+other
			;	
  
	if(window.XMLHttpRequest){  
		udRequest=new XMLHttpRequest();  
	} else if(window.ActiveXObject){  
		udRequest=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	
	try{  
		udRequest.onreadystatechange = updateDataResponse;  
		udRequest.open("GET",url,true);  
		udRequest.send();  
	}catch(e){alert("Unable to connect to server");}  
}  
  
function updateDataResponse(){  
	if(udRequest.readyState==4){  
		var res = udRequest.responseText;
		alert(res);
	}  
}

function updateDataCheck(id){
	if(id == null){
		alert("No profile selected.");
	} else {
		updateData(id);
	}
}