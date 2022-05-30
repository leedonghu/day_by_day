package com.study.day_by_day.domain;

import lombok.Data;

@Data
public class MelonVO {
	private int rank;
	private String name;
	private String artist;
	private String album;
	
	public MelonVO(int rank, String name, String artist, String album) {
		this.rank = rank;
		this.name = name;
		this.artist = artist;
		this.album = album;
	}
}
