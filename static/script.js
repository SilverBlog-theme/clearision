// Code editable onclick

function clrs_code() {
    let controls = document.getElementsByTagName('pre');
    for (let i = 0; i < controls.length; i++) {
        controls[i].spellcheck = false;
        controls[i].setAttribute("contenteditable", "true")
    }
    controls = document.getElementsByTagName('code');
    for (let i = 0; i < controls.length; i++) {
        controls[i].spellcheck = false;
        controls[i].setAttribute("contenteditable", "true");
    }

}


window.onload = clrs_code;