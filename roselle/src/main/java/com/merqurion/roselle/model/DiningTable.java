package com.merqurion.roselle.model;

import javax.persistence.*;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "dining_tables", catalog = "restaurant")
public class DiningTable implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999004L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "name")
    private String name;
    
    public Integer getId() {
        return id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
}
