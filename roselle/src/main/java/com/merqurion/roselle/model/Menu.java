package com.merqurion.roselle.model;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "menus", catalog = "restaurant")
public class Menu implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999003l;
    
    public static final int ADVERTISEMENT = 0;
    public static final int MAIN_COURSE = 1;
    public static final int DRINK = 2;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;
    
    @Column(name = "name")
    private String name;
    
    @Column
    private Double price = 0d;
    
    @Transient
    private Double discount = 0d; // rentang: 0 - 1
    
    @Column
    private String description;
    
    @Column
    private Boolean availability = true;
    
    @Transient
    private Boolean recommended;
    
    @Transient
    private Boolean deleted = false;
    
    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private Category category;
    
    //@OneToMany(mappedBy = "menu")
    @Transient
    private List<OrderLine> orderedMenus = new ArrayList<>(0);
    
    public Boolean getAvailability() {
        return availability;
    }
    
    public void setAvailability(Boolean availability) {
        this.availability = availability;
    }
    
    public Category getCategory() {
        return category;
    }
    
    public void setCategory(Category category) {
        this.category = category;
    }
    
    public Boolean getDeleted() {
        return deleted;
    }
    
    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public Double getDiscount() {
        return discount;
    }
    
    public void setDiscount(Double discount) {
        this.discount = discount;
    }
    
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
    
    public List<OrderLine> getOrderedMenus() {
        return orderedMenus;
    }
    
    public void setOrderedMenus(List<OrderLine> orderedMenus) {
        this.orderedMenus = orderedMenus;
    }
    
    public Double getPrice() {
        return price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }
    
    public Boolean getRecommended() {
        return recommended;
    }
    
    public void setRecommended(Boolean recommended) {
        this.recommended = recommended;
    }
    
    @Override
    public String toString() {
        return String.format(
            "{Menu ID: %s\n" +
            "Name: %s\n" +
            "Price: %s\n" +
            "Description: %s\n" +
            "Availability: %s\n" +
            "Group ID: %s}",
            getId(), getName(), getPrice(), getDescription(), getAvailability(), "");
    }
    
}
