function viewLarger(imageToViewLarge){
	document.getElementById("viewLargerModalId").style.display = "block";
	document.getElementById("largerImageId").src = imageToViewLarge.src;
	
	alert(imageToViewLarge);
}

function closeViewLarger(){
	document.getElementById("viewLargerModalId").style.display = "none";
}



var lpRequest;
var photo;

function loadPhoto(id){   
	var url = "./../LoadPhotoServ?id="+id;
	if(window.XMLHttpRequest){  
		lpRequest = new XMLHttpRequest();  
	} else if(window.ActiveXObject){  
		lpRequest = new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	
	try{  
		lpRequest.onreadystatechange = loadPhotoResponse;  
		lpRequest.open("GET",url,true);  
		lpRequest.send();  
	}catch(e){alert("Unable to connect to server");}  
}  
  
function loadPhotoResponse(){  
	if(lpRequest.readyState == 4){  
		var photo = lpRequest.responseXML;
		var result = photo.getElementsByTagName("result")[0];
		var count = result.childElementCount;
		var gallary = document.getElementById("gallary");
		
		for(var i = 0; i < count; i++){
			var gp = document.createElement("img");
			gp.className = "img-fluid img-thumbnail m-2 cus-click";
			gp.style.height = "200px";
			gp.src = "data:image/jpg;base64," + photo.getElementsByTagName("image")[i].firstChild.data;
			gp.onclick = function(){viewLarger(this);};
			gallary.appendChild(gp); 
		}
	}  
}