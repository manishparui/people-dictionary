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
			var gallaryPhotoSource = "data:image/jpg;base64," + photo.getElementsByTagName("image")[i].firstChild.data;
			
			var warpA = document.createElement("a");
			warpA.setAttribute("href", gallaryPhotoSource);
			//warpA.setAttribute("target", "_blank");
			warpA.setAttribute("data-lightbox", "gallaryPhothos");
			
			
			var gp = document.createElement("img");
			gp.className = "img-fluid img-thumbnail m-2 cus-click";
			gp.style.height = "200px";
			gp.src = gallaryPhotoSource;
			
			warpA.appendChild(gp);
			gallary.appendChild(warpA); 
		}
	}  
}