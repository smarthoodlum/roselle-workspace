package com.merqurion.roselle.model;

import java.util.ArrayList;
import java.util.Map;
import java.util.List;
import java.util.TreeMap;
import javax.persistence.*;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "roles", catalog = "restaurant")
public class Role implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999010l;
    
    public static final String WAITER = "ROLE_WAITER";
    public static final String CHEF = "ROLE_CHEF";
    public static final String MANAGER = "ROLE_MANAGER";
    public static final String ADMIN = "ROLE_ADMIN";
    public static final String CASHIER = "ROLE_CASHIER";
    public static final String CHECKER = "ROLE_CHECKER";
    public static final String SUPERVISOR = "ROLE_SUPERVISOR";
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private String id;
    
    @Column(name = "name")
    private String name;
    
    @Column
    private String description;
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "role")
    private List<User> users = new ArrayList<User>(0);
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
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
    
    public static Map<String, String> getRoleConstantMap() {
        Map<String, String> constants = new TreeMap<String, String>();
        constants.put("ADMIN", ADMIN);
        constants.put("CASHIER", CASHIER);
        constants.put("CHECKER", CHECKER);
        constants.put("CHEF", CHEF);
        constants.put("MANAGER", MANAGER);
        constants.put("SUPERVISOR", SUPERVISOR);
        constants.put("WAITER", WAITER);
        return constants;
    }
    
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{roleId: ").append(getId()).append("}");
        return sb.toString();
    }
}
