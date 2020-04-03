package com.javainuse.model;

import java.util.Collection;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name = "role")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @ManyToMany(mappedBy = "roles")
    private List<User> users;

//    @ManyToMany
//    @JoinTable(
//        name = "roles_privileges", 
//        joinColumns = @JoinColumn(
//          name = "role_id", referencedColumnName = "id"), 
//        inverseJoinColumns = @JoinColumn(
//          name = "privilege_id", referencedColumnName = "id"))
//    private Collection<Privilege> privileges; 
    
 

	public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

	@Override
	public String toString() {
		return "Role [name=" + name + "]";
	}

//	public Collection<Privilege> getPrivileges() {
//		return privileges;
//	}
//
//	public void setPrivileges(Collection<Privilege> privileges) {
//		this.privileges = privileges;
//	}
    
}
