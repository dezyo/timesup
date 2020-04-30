package preguntas;
import java.util.HashSet;;

public class ColeccionPreguntas {
	private HashSet<String> coleccion;
	
	public ColeccionPreguntas() {
		coleccion = new HashSet<String>();
	}

	public HashSet<String> getColeccion() {
		return coleccion;
	}

	public void setColeccion(HashSet<String> coleccion) {
		this.coleccion = coleccion;
	}
	
	public void addPregunta(String pregunta) {
		coleccion.add(pregunta);
	}
	
	public void removePregunta(String pregunta) {
		coleccion.remove(pregunta);
	}
	
}
