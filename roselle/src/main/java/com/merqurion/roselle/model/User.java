package com.merqurion.roselle.model;

import java.util.*;
import javax.persistence.*;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "users", catalog = "restaurant")
public class User implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999012l;
    
    public static final int MALE = 0;
    public static final int FEMALE = 1;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;
    
    @Column(name = "first_name")
    private String firstName;
    
    @Column(name = "last_name")
    private String lastName;
    
    @Column(precision = 1)
    private Integer gender;
    
    //@Column(name = "birth_date")
    //@Temporal(TemporalType.DATE)
    @Transient
    private Calendar birthDate;
    
    @Column
    private String username;
    
    @Column(name = "password")
    private String password;
    
    @Transient
    private String newPassword;
    
    @Transient
    private String retypedPassword;
    
    @Column
    private String address;
    
    @Column
    private String phone;
    
    @Column
    private String note;
    
    @Column(name = "photo_url")
    private String photoUrl;
    
    @Column
    private Boolean enabled;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "role_id", nullable = false)
    private Role role;
    
    @OneToMany(mappedBy = "server")
    private List<CustOrder> orders = new ArrayList<CustOrder>(0);
    
    public String getAddress() {
        return address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public Calendar getBirthDate() {
        return birthDate;
    }
    
    public void setBirthDate(Calendar birthDate) {
        this.birthDate = birthDate;
    }
    
    public Boolean getEnabled() {
        return enabled;
    }
    
    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    
    public String getFirstName() {
        return firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public Integer getGender() {
        return gender;
    }
    
    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Integer getId() {
        return id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getLastName() {
        return lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getNewPassword() {
        return newPassword;
    }
    
    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
    
    public String getNote() {
        return note;
    }
    
    public void setNote(String note) {
        this.note = note;
    }
    
    public List<CustOrder> getOrders() {
        return orders;
    }
    
    public void setOrders(List<CustOrder> orders) {
        this.orders = orders;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getPhone() {
        return phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public String getPhotoUrl() {
        return photoUrl;
    }
    
    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }
    
    public String getRetypedPassword() {
        return retypedPassword;
    }
    
    public void setRetypedPassword(String retypedPassword) {
        this.retypedPassword = retypedPassword;
    }
    
    public Role getRole() {
        return role;
    }
    
    public void setRole(Role role) {
        this.role = role;
    }
    
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{name: ").append(getFirstName() + " " + getLastName())
        .append(", username: ").append(getUsername())
        .append(", role: ").append(getRole()).append("}");
        return sb.toString();
    }
}
