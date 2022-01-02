package com.space.entity;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class Trends 
{
	public  void Programming() throws IOException
	{
		String array1;
		String array2;
		
	//Stack Overflow developer survey 2019
	Document doc = Jsoup.connect("https://insights.stackoverflow.com/survey/2020#most-popular-technologies")
			.timeout(6000).get();
	
	Elements body = doc.select("div#technology-programming-scripting-and-markup-languages-all-respondents tbody");
	//System.out.println(body.select("tr").size());
	
	for(Element e : body.select("tr"))
	{
		
		String title = e.select("td.label.lh-sm").text();
		//System.out.println(title);
		
		String percent = e.select("td.bar span").text();
		System.out.println(title+" "+percent);
		
					
	}
	
	
}	
	
	//Programming Languages
	public Map returnMultipleValues() throws IOException {
		
		 Map<String,Integer> multiValues = new HashMap<String, Integer>();
		
		
		
		Document doc = Jsoup.connect("https://insights.stackoverflow.com/survey/2020#most-popular-technologies")
				.timeout(6000).get();
		
		Elements body = doc.select("div#technology-programming-scripting-and-markup-languages-all-respondents tbody");
		//System.out.println(body.select("tr").size());
		
		for(Element e : body.select("tr"))
		{
			
			String title = e.select("td.label.lh-sm").text();
			//System.out.println(title);  
			
			
			
			String percent = e.select("td.bar span").text();
			//System.out.println(title+" "+percent);
			
			int per = Integer.parseInt(percent.substring(0, percent.length() - 3));
			multiValues.put(title, per);
			
						  
		}
		
				
		
		
		/*
		 * for(Map.Entry pair : multiValues.entrySet()) {
		 * System.out.println(pair.getKey() + ": "+ pair.getValue()); }
		 */

		

		 //populate and manipulate these two array

		 
		

		 return multiValues;

		}
	
	
	//IT Jobs
			public Map returnJobValues() throws IOException {
				
				 Map<String,Integer> multiValues = new HashMap<String, Integer>();
				
				
				
				Document doc = Jsoup.connect("https://insights.stackoverflow.com/survey/2020#most-popular-technologies")
						.timeout(6000).get();
				
				Elements body = doc.select("div#developer-profile-developer-type-all-respondents");
				//System.out.println(body.select("tr").size());
				
				for(Element e : body.select("tr"))
				{
					
					String title = e.select("td.label.lh-sm").text();
					//System.out.println(title);  
					
					
					
					String percent = e.select("td.bar span").text();
					//System.out.println(title+" "+percent);
					
					int per = Integer.parseInt(percent.substring(0, percent.length() - 3));
					multiValues.put(title, per);
					
								  
				}


				 
				

				 return multiValues;

				}

	
	
}
