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
	
	public Cover() {}

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

	@Override
	public String toString() {
		return "Cover [id=" + id + ", title=" + title + ", originalArtist=" + originalArtist + "]";
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
