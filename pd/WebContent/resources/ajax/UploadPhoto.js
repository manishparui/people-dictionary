var upRequest;

function uploadPhoto(){
	var photos = document.getElementById("photos");
	var id = document.getElementById("id").value;
	var formData = new FormData();
	
	formData.append("id", id);
	
	for (var i = 0; i < photos.files.length; i++){
		formData.append("photosList[]", photos.files[i]);
	}
	
	var url = "./../UploadPhotoServ"	
  
	if(window.XMLHttpRequest){  
		upRequest = new XMLHttpRequest();  
	} else if(window.ActiveXObject){  
		upRequest = new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	
	try{  
		upRequest.onreadystatechange = uploadPhotoResponse;  
		upRequest.open("POST", url, true);
		upRequest.send(formData);  
	}catch(e){alert("Unable to connect to server");}  
}  
  
function uploadPhotoResponse(){  
	if(upRequest.readyState == 4){  
		var res = upRequest.responseText;
		alert(res); 
	}  
}