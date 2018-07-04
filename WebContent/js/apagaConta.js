var btn = document.querySelector(".btnApagar");
btn.addEventListener("click",function(){
	var div = document.querySelector(".caixa-form");
	div.innerHTML = "<form action='excluir.jsp' method='POST'>"+
					"<table>"+
						"<tr>"+
							"<td>Digite o seu email</td>"+
						"</tr>"+
						"<tr>"+
							"<td><input class='inp' type='text' name='email' required></td>"+
						"</tr>"+
					"</table>"+
					"<button class='btn cancelar' type='reset'>Cancelar</button>"+
					"<button style='background-color: red;' class='btn salvar' type='submit'>apagar conta</button>"+
				"</form>"
})
	

	
