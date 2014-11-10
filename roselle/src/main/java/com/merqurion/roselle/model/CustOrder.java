package com.merqurion.roselle.model;

import java.util.*;
import javax.persistence.*;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "orders", catalog = "restaurant")
public class CustOrder implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999004l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Long id;
    
    @Transient
    private String tableName;
    
    @ManyToOne
    @JoinColumn(name = "server_id", nullable = false)
    private User server;
    
    @Column(name = "order_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date orderTime = new Date();
    
    @Column(name = "ready_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date readyTime;
    
    @OneToMany(mappedBy = "custOrder", cascade = CascadeType.ALL)
    private Set<OrderLine> orderLines = new HashSet<>(0);
    
    public Double getSubtotal() {
        Double subtotal = 0d;
        for (OrderLine om : orderLines) {
            subtotal += om.getAmount();
        }
        return subtotal;
    }
    
    /** Getter and setter */
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Set<OrderLine> getOrderLines() {
        return orderLines;
    }
    
    public void setOrderLines(Set<OrderLine> orderLines) {
        this.orderLines = orderLines;
    }
    
    public Date getOrderTime() {
    	return orderTime;
    }
    
    public void setOrderTime(Date orderTime) {
    	this.orderTime = orderTime;
    }
    
    public Date getReadyTime() {
    	return readyTime;
    }
    
    public void setReadyTime(Date readyTime) {
    	this.readyTime = readyTime;
    }
    
    public User getServer() {
        return server;
    }
    
    public void setServer(User server) {
        this.server = server;
    }
    
    public String getTableName() {
    	return tableName;
    }
    
    public void setTableName(String tableName) {
    	this.tableName = tableName;
    }
}
