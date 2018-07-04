
var botao = document.querySelector(".botao")
botao.addEventListener("click", function(){
	var senha = document.querySelector("#senha")
	var confiSenha = document.querySelector("#confSenha")
	numero = 2;
	
	if(senha.value != confiSenha.value){
		alert("As senhas não coincidem");
}})