package modelo;

public class Evento {
    private int idcomentario;
    private int fidencontro;
    private int fidusuario;
    private String text;

    
    public int getIdcomentario() {
        return idcomentario;
    }

    
    public void setIdcomentario(int idcomentario) {
        this.idcomentario = idcomentario;
    }

    
    public int getFidencontro() {
        return fidencontro;
    }

    public void setFidencontro(int fidencontro) {
        this.fidencontro = fidencontro;
    }

    
    public int getFidusuario() {
        return fidusuario;
    }

    public void setFidusuario(int fidusuario) {
        this.fidusuario = fidusuario;
    }

    
    public String getText() {
        return text;
    }

    
    public void setText(String text) {
        this.text = text;
    }
    
    
}

