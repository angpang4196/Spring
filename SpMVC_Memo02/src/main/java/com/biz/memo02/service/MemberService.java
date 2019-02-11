package com.biz.memo02.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.stereotype.Service;

import com.biz.memo02.vo.CodeVO;

@Service
public class MemberService {
	
	/*
	 * Map<Key,Value>
	 * 키와 값의 쌍으로 구성된 자료구조
	 * 값을 추가할 때는 : map.put(key,value)
	 * 값을 읽을 때는 : map.key 형태로 값을 읽는다.
	 */

	public List<CodeVO> getCities(){
		List<CodeVO> cities = new ArrayList<CodeVO>();
		
		cities.add(new CodeVO("광주광역시","GWANGJU"));
		cities.add(new CodeVO("서울특별시","SEOUL"));
		cities.add(new CodeVO("울산광역시","ULSAN"));
		cities.add(new CodeVO("인천광역시","INCHEON"));
		cities.add(new CodeVO("부산광역시","BUSAN"));
		cities.add(new CodeVO("대전광역시","DAEJEON"));
		cities.add(new CodeVO("대구광역시","DAEGU"));
		cities.add(new CodeVO("제주특별자치도","JEJU"));
		
		return cities;
		
	}
	public Map<String, String> getCitiesMap() {
		
		/*
		 * HashMap은 put한 순서대로 나열
		 * TreeMap은 key를 기준으로 오름차순 정렬
		 */
		Map<String, String> cities = new HashMap<String, String>();
		cities = new TreeMap<String,String>();

		cities.put("광주광역시","GWANGJU");
		cities.put("부산광역시","BUSAN");
		cities.put("울산광역시","ULSAN");
		cities.put("인천광역시","INCHEON");
		cities.put("대전광역시","DAEJEON");
		cities.put("대구광역시","DAEGU");
		cities.put("서울특별시","SEOUL");
		cities.put("제주특별자지도","JEJU");

		return cities;
	}

	public List<String> getCitiesList() {

		List<String> cities = new ArrayList<String>();

		cities.add("광주광역시");
		cities.add("부산광역시");
		cities.add("울산광역시");
		cities.add("인천광역시");
		cities.add("대전광역시");
		cities.add("대구광역시");
		cities.add("서울특별시");
		cities.add("제주특별자치도");

		return cities;
	}
	
	public List<CodeVO> getHobbies(){
		
		List<CodeVO> hobbies = new ArrayList();
		hobbies.add(new CodeVO("독서","BOOK"));
		hobbies.add(new CodeVO("등산","MOUNT"));
		hobbies.add(new CodeVO("영화감상","MOVIE"));
		hobbies.add(new CodeVO("음악감상","MUSIC"));
		hobbies.add(new CodeVO("인터넷게임","GAME"));
		
		return hobbies;
	}

	public Map<String, String> getHobbiesMap() {

		Map<String, String> hobbies = new HashMap<String, String>();

		hobbies.put("BOOK", "독서");
		hobbies.put("MOUNT", "등산");
		hobbies.put("MOVIE", "영화감상");
		hobbies.put("MUSIC", "음악감상");
		hobbies.put("GAME", "인터넷게임");

		return hobbies;
	}

	public List<String> getHobbiesList() {
		
		List<String> hobbies = new ArrayList<String>();

		hobbies.add("독서");
		hobbies.add("등산");
		hobbies.add("영화감상");
		hobbies.add("음악감상");
		hobbies.add("인터넷게임");

		return hobbies;
	}

}
