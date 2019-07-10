/*
 * send profile image
*/
var spiRequest;

function sendProfileImage(id){
	var profileImage = document.getElementById("profileImage").files[0];
	var formData = new FormData();
	formData.append("img", profileImage);
	formData.append("id", id);
	var url="./../InsertProfileImageServ"	
  
	if(window.XMLHttpRequest){  
		spiRequest=new XMLHttpRequest();  
	} else if(window.ActiveXObject){  
		spiRequest=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	
	try{  
		spiRequest.onreadystatechange=sendProfileImageResponse;  
		spiRequest.open("POST",url,true);
		spiRequest.send(formData);  
	}catch(e){alert("Unable to connect to server");}  
}  
  
function sendProfileImageResponse(){  
	if(spiRequest.readyState==4){  
		var val=spiRequest.responseText;
		alert(val); 
	}  
}



/*
 * send profile data
*/
var sdRequest;

function sendInfo(){
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
	
	var url="./../AddProfileServ?"+
			"name="+name+
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
		sdRequest=new XMLHttpRequest();  
	} else if(window.ActiveXObject){  
		sdRequest=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	
	try{  
		sdRequest.onreadystatechange=getInfo;  
		sdRequest.open("GET",url,true);  
		sdRequest.send();  
	}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
	if(sdRequest.readyState==4){  
		var id = sdRequest.responseText;
		sendProfileImage(id);
	}  
}  