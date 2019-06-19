package b06.bean;

public class FavoriteBean {
	String color = "";
	String flower = "";
	String music = "";
	
	public void setValue(String color, String flower, String music) {
		this.color = color;
		this.flower = flower;
		this.music = music;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public void setFlower(String flower) {
		this.flower = flower;
	}
	public void setMusic(String music) {
		this.music = music;
	}
	public String getColor() {
		return color;
	}
	public String getFlower() {
		return flower;
	}
	public String getMusic() {
		return music;
	}
}
