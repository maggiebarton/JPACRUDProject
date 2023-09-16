package com.skilldistillery.covers.entities;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cover {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String title;

	@Column(name = "original_artist")
	private String originalArtist;
	
	@Column(name = "song_key")
	private String songKey;

	private Integer capo;

	private String status;

	@Column(name = "chords_url")
	private String chordsURL;

	public Cover() {
	}

	public Cover(String title, String originalArtist, String status) {
		super();
		this.title = title;
		this.originalArtist = originalArtist;
		this.status = status;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOriginalArtist() {
		return originalArtist;
	}

	public void setOriginalArtist(String originalArtist) {
		this.originalArtist = originalArtist;
	}

	public String getSongKey() {
		return songKey;
	}

	public void setSongKey(String songKey) {
		this.songKey = songKey;
	}

	public Integer getCapo() {
		return capo;
	}

	public void setCapo(Integer capo) {
		this.capo = capo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getChordsURL() {
		return chordsURL;
	}

	public void setChordsURL(String chordsURL) {
		this.chordsURL = chordsURL;
	}



	@Override
	public String toString() {
		return "Cover [id=" + id + ", title=" + title + ", originalArtist=" + originalArtist + ", songKey=" + songKey
				+ ", capo=" + capo + ", status=" + status + ", chordsURL=" + chordsURL + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cover other = (Cover) obj;
		return id == other.id;
	}

}
