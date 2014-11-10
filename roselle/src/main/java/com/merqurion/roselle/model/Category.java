package com.merqurion.roselle.model;

import java.util.*;
import javax.persistence.*;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "categories", catalog = "restaurant")
public class Category implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999001L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;
    
    @Column(name = "title")
    private String title;
    
    @OneToMany(mappedBy = "category")
    private List<Menu> menuList = new ArrayList<Menu>(0);
    
    public Integer getId() {
        return id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getTitle() {
        return title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public List<Menu> getMenuList() {
        return menuList;
    }
    
    public void setMenuList(List<Menu> menuList) {
        this.menuList = menuList;
    }
}
