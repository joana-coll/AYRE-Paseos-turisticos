window.onscroll = function(){
    if (window.scrollY === 0) {
        document.querySelector('#navCambio').classList.remove("bg-azulmarino"); 
    } else {
        document.querySelector('#navCambio').classList.add("bg-azulmarino");
    }
};
