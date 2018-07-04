package modelo;

import java.util.Date;

public class Encontro {
   private int  idencontro;
   private Date dataencontro;
   private Livro livro;
public int getIdencontro() {
	return idencontro;
}
public void setIdencontro(int idencontro) {
	this.idencontro = idencontro;
}
public Date getDataencontro() {
	return dataencontro;
}
public void setDataencontro(Date dataencontro) {
	this.dataencontro = dataencontro;
}
public Livro getLivro() {
	return livro;
}
public void setLivro(Livro livro) {
	this.livro = livro;
}
   
}
