package com.space.entity;

public class Categories 
{
	private int category_id;
	private String name;
	private String description;
	private int topcate_id;
	
	
	public Categories()
	{
		 
	} 
	
	
	//display
	public Categories(int category_id, String name) {
		super();
		this.category_id = category_id;
		this.name = name;
	}

	

	//insert
	public Categories(String name, String description) {
		super();
		this.name = name;
		this.description = description;
	}


 
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) { 
		this.category_id = category_id;
	}
	public String getName() { 
		return name;
	}
	public void setName(String name) {
		this.name = name;
	} 
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	

	public int getTopcate_id() {
		return topcate_id;
	}
 
 
	public void setTopcate_id(int topcate_id) {
		this.topcate_id = topcate_id;
	}


	@Override
	public String toString() {
		return "Categories [category_id=" + category_id + ", name=" + name + ", description=" + description
				+ ", topcate_id=" + topcate_id + "]";
	}


	
	
	
	
	

}
