package m8.uf4;

import java.util.ArrayList;

public class Lista {
	
	ArrayList<Cancion> lista;
	
	public Lista (ArrayList<Cancion> lista) {
		this.lista = lista;
	}

	public ArrayList<Cancion> getLista() {
		return lista;
	}

	public void setLista(ArrayList<Cancion> lista) {
		this.lista = lista;
	}

}
