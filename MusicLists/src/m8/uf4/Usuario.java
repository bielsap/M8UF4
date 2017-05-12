package m8.uf4;

import java.util.ArrayList;

public class Usuario {
	
	private int id;
	private String user;
	private String pass;
	
	public Usuario (String user, String pass) {
		this.user = user;
		this.pass = pass;
	}
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Usuario [user=" + user + ", pass=" + pass + "]";
	}

}
