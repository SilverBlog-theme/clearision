// Code editable onclick

function clrs_code(){
	var controls = document.getElementsByTagName('pre');
	for(var i=0; i<controls.length; i++){
		controls[i].spellcheck = false;
		controls[i].setAttribute("contenteditable","true")
	};
	var controls = document.getElementsByTagName('code');
	for(var i=0; i<controls.length; i++){
		controls[i].spellcheck = false;
		controls[i].setAttribute("contenteditable","true");
	};
}


window.onload = clrs_code;