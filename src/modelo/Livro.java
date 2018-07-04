package modelo;

public class Livro {
	private int idlivro;
    private String resenha;
    private String imagem;
    private int pontos;

    
    public String getImagem() {
		return imagem;
	}


	public void setImagem(String imagem) {
		this.imagem = imagem;
	}


	public int getPontos() {
		return pontos;
	}


	public void setPontos(int pontos) {
		this.pontos = pontos;
	}


	public int getIdlivro() {
        return idlivro;
    }

    
    public void setIdlivro(int idlivro) {
        this.idlivro = idlivro;
    }

   
    public String getResenha() {
        return resenha;
    }

    
    public void setResenha(String resenha) {
        this.resenha = resenha;
    }

}
