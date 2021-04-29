function uniqueID() {
	var id = document.getElementById("unique");
	id.value=Math.floor(Math.random() + Date.now());
	}