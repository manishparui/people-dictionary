var ldRequest;
var profile;

function loadData(id){   
	var url="./../LoadDataServ?id="+id;
  
	if(window.XMLHttpRequest){  
		ldRequest=new XMLHttpRequest();  
	} else if(window.ActiveXObject){  
		ldRequest=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	
	try{  
		ldRequest.onreadystatechange=loadDataResponse;  
		ldRequest.open("GET",url,true);  
		ldRequest.send();  
	}catch(e){alert("Unable to connect to server");}  
}  
  
function loadDataResponse(){  
	if(ldRequest.readyState==4){  
		profile = ldRequest.responseXML;
		
		document.getElementById("name").value = profile.getElementsByTagName("name")[0].firstChild.data;
		document.getElementById("otherName").value = profile.getElementsByTagName("otherName")[0].firstChild.data;
		document.getElementById("dob").value = profile.getElementsByTagName("dob")[0].firstChild.data;
		document.getElementById("gender").value = profile.getElementsByTagName("gender")[0].firstChild.data;
		document.getElementById("nationality").value = profile.getElementsByTagName("nationality")[0].firstChild.data;
		document.getElementById("fatherName").value = profile.getElementsByTagName("fatherName")[0].firstChild.data;
		document.getElementById("motherName").value = profile.getElementsByTagName("motherName")[0].firstChild.data;
		document.getElementById("profession").value = profile.getElementsByTagName("profession")[0].firstChild.data;
		document.getElementById("presentWork").value = profile.getElementsByTagName("presentWork")[0].firstChild.data;
		document.getElementById("pastWork").value = profile.getElementsByTagName("pastWork")[0].firstChild.data;
		document.getElementById("education").value = profile.getElementsByTagName("education")[0].firstChild.data;
		document.getElementById("address").value = profile.getElementsByTagName("address")[0].firstChild.data;
		document.getElementById("phno").value = profile.getElementsByTagName("phno")[0].firstChild.data;
		document.getElementById("email").value = profile.getElementsByTagName("email")[0].firstChild.data;
		document.getElementById("facebook").value = profile.getElementsByTagName("facebook")[0].firstChild.data;
		document.getElementById("instagram").value = profile.getElementsByTagName("instagram")[0].firstChild.data;
		document.getElementById("twiter").value = profile.getElementsByTagName("twiter")[0].firstChild.data;
		document.getElementById("github").value = profile.getElementsByTagName("github")[0].firstChild.data;
		document.getElementById("other").value = profile.getElementsByTagName("other")[0].firstChild.data;
	}  
}