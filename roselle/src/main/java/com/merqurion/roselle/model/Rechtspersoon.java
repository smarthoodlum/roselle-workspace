package com.merqurion.roselle.model;

import javax.persistence.*;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "rechtspersoon", catalog = "restaurant")
public class Rechtspersoon implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999007l;
    
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    @Column(length = 100)
    private String name;
    
    @Column
    private String address;
    
    @Column
    private String city;
    
    @Column(name = "postal_code")
    private Integer postalCode;
    
    @Column(length = 100)
    private String website;
    
    @Column(length = 100)
    private String email;
    
    @Column(length = 20)
    private String phone;
    
    @Column(length = 20)
    private String fax;
    
    @Column
    private String note;
    
    public String getAddress() {
        return address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getCity() {
        return city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getFax() {
        return fax;
    }
    
    public void setFax(String fax) {
        this.fax = fax;
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
    
    public String getNote() {
        return note;
    }
    
    public void setNote(String note) {
        this.note = note;
    }
    
    public String getPhone() {
        return phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public Integer getPostalCode() {
        return postalCode;
    }
    
    public void setPostalCode(Integer postalCode) {
        this.postalCode = postalCode;
    }
    
    public String getWebsite() {
        return website;
    }
    
    public void setWebsite(String website) {
        this.website = website;
    }
    
}
