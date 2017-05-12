package m8.uf4;

public class Cancion {
	
	private int id;
	private String titulo;
	private String artista;
	private String genero;
	private String url;
	
	public Cancion() {
		
	}
	
	public Cancion (String titulo, String artista, String genero, String url) {
		this.titulo = titulo;
		this.artista = artista;
		this.genero = genero;
		this.url = url;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getArtista() {
		return artista;
	}
	public void setArtista(String artista) {
		this.artista = artista;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}

	@Override
	public String toString() {
		return "Cancion [titulo=" + titulo + ", artista=" + artista + ", genero=" + genero + "]";
	}

}
