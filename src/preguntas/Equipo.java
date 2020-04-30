package preguntas;

public class Equipo {
	private String nombre;
	private int puntuacion;
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getPuntuacion() {
		return puntuacion;
	}
	public void setPuntuacion(int puntuacion) {
		this.puntuacion = puntuacion;
	}
	
	public void puntua(int puntos) {
		this.puntuacion = this.puntuacion + puntos;
	}
	
}
