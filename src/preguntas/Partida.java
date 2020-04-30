package preguntas;
import java.util.*;

public class Partida {
	private HashSet<String> coleccion;
	private HashSet<Equipo> equipos;
	private List<String> lista;
	private Iterator<String> iterador;

	public HashSet<String> getColeccion() {
		return coleccion;
	}
	
	public void setColeccion(HashSet<String> coleccion) {
		this.coleccion = coleccion;
	}

	public HashSet<Equipo> getEquipos() {
		return equipos;
	}

	public void setEquipos(HashSet<Equipo> equipos) {
		this.equipos = equipos;
	}
	
	public void addEquipo(Equipo equipo) {
		this.equipos.add(equipo);
	}

	public List<String> getLista(){
		return this.lista;
	}
	
	public List<String> barajar() {
		if (this.coleccion != null) {
			//if (this.lista == null) {
				this.lista = new ArrayList<String>(this.coleccion);
				if (this.lista != null) {
					this.iterador = this.lista.iterator();
					Collections.shuffle(this.lista);
					return this.lista;
				}
			}
		//}
		return null;
	}
	
	public String repartir() {
		if(this.lista != null) {
			if(this.iterador.hasNext()) {
				String siguiente = iterador.next();
				/* lista.remove(siguiente); */
				return siguiente;
			}
		}
		return "No hay mas palabras";
	}
}
	
	
	
	
	