package com.study.day_by_day.domain;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class CrawlingDAO {
	
	public ArrayList<MelonVO> Crawling() {
		String url = "https://www.melon.com/chart/index.htm";
		Document doc = null;
		Elements tmp;
		String name = null;
		String artist = null;
		String album = null;
		int rank = 0;
		ArrayList<MelonVO> mc = new ArrayList<MelonVO>();
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Elements nameElement = doc.select("div.ellipsis.rank01>span>a");
		Elements artistElement = doc.select("div.ellipsis.rank02>span");
		
		Elements albumElement = doc.select("div.ellipsis.rank03>a");
		
		Elements rankElement = doc.select("td>div.wrap.t_center>span.rank");
		System.out.println(rankElement.size());
		for(int i=0; i<100; i++) {
			
			name = nameElement.get(i).text();
//			System.out.println(name);
			
			artist = artistElement.get(i).text();
//			System.out.println(artist);
			
			album = albumElement.get(i).text();
//			System.out.println(album);
			
			rank = Integer.parseInt(rankElement.get(i).text());
//			System.out.println(rank);
//			System.out.println("================================");
			mc.add(new MelonVO(rank, name, artist, album));
		}
//		
//		nameElement = doc.select("tr.1st100").select("div.ellipsis.rank01").select("span").select("a");
//		artistElement = doc.select("tr.1st100").select("div.ellipsis.rank02").select("a");
//		albumElement = doc.select("tr.1st100").select("div.ellipsis.rank03").select("a");
//		rankElement = doc.select("tr.1st100").select("div.wrap.t_center").select("span.rank");
//		
//		for(int i=0; i<50; i++) {
//			name = nameElement.get(i).text();
//			
//			
//			artist = artistElement.get(i).text();
//			
//			
//			album = albumElement.get(i).text();
//			
//			
//			rank = Integer.parseInt(rankElement.get(i).text());
//			
//			mc.add(new MelonVO(rank, name, artist, album));
//		}
//		
//		System.out.println("Crawling complete");
		return mc;
	}
}
