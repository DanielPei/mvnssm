package com.daniel.test;

import java.util.Map;

import org.apache.commons.collections.map.CaseInsensitiveMap;

public class CaseInsensitiveMapTest {
	
	public static void main(String[] args) {
		@SuppressWarnings("unchecked")
		Map<String, Object> map = new CaseInsensitiveMap();
		
		map.put("str", "str");
		
		System.out.println(map.get("Str"));
		System.out.println(map.get("sTr"));
		System.out.println(map.get("stR"));
		System.out.println(map.get("STR"));
	}

}
