package com.web.vo;

public class HumanVO {

	private int age;
	private String name;
	private String addr;
	
	public void setAge(int age) {
		this.age = age;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public int getAge() {
		return age;
	}
	public String getName() {
		return name;
	}
	public String getAddr() {
		return addr;
	}
}

class Execute{
	public static void main(String[] args) {
		HumanVO human = new HumanVO();
		human.setAge(24);
		human.setName("김용준");
		human.setAddr("경기도");
		System.out.println(human.getAge());
		System.out.println(human.getName());
		System.out.println(human.getAddr());
	}
}
