/**
 * 
 */
var botao = document.querySelector(".btn");
botao.addEventListener("click",function(){
	var campo = document.querySelector(".campo")
	var comentario = "<p class='area-comentario'> "+campo.value+" </p>"
	var areaComentario = document.querySelector(".comentarios")
	areaComentario.innerHTML = areaComentario.innerHTML + comentario;
	campo.value = "";
})