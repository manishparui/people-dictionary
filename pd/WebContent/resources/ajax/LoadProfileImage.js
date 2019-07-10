var lpiRequest;

function loadProfileImage(id){
	var url = "./../RetrieveProfileImageServ?id=" + id;	
  
	if(window.XMLHttpRequest){  
		lpiRequest = new XMLHttpRequest();  
	} else if(window.ActiveXObject){  
		lpiRequest = new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	
	try{  
		lpiRequest.onreadystatechange = loadProfileImageResponse;  
		lpiRequest.open("GET",url,true);  
		lpiRequest.send();  
	}catch(e){alert("Unable to connect to server");}  
}  
  
function loadProfileImageResponse(){  
	if(lpiRequest.readyState == 4){  
		profileImage = document.getElementById("pic");
		profileImage.src = "data:image/jpg;base64," + lpiRequest.responseText;
	}  
}