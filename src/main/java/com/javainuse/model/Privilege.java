//package com.javainuse.model;
//
//import java.util.Collection;
//
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.ManyToMany;
//
//@Entity
//public class Privilege {
//  
//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private Long id;
// 
//    private String name;
// 
//    @ManyToMany(mappedBy = "privileges")
//    private Collection<Role> roles;
//
//	public Privilege(String name) {
//		// TODO Auto-generated constructor stub
//		this.name=name;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//	public Collection<Role> getRoles() {
//		return roles;
//	}
//
//	public void setRoles(Collection<Role> roles) {
//		this.roles = roles;
//	}
//    
//    
//    
//}
//
