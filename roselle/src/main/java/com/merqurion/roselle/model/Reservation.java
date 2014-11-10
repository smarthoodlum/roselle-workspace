package com.merqurion.roselle.model;

import java.util.Calendar;
import javax.persistence.*;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "reservations", catalog = "restaurant")
public class Reservation implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999013l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id;
    
    @Column(name = "customer_name")
    private String customerName;
    
    @Column(name = "booking_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Calendar bookingTime = Calendar.getInstance();
    
    public Calendar getBookingTime() {
        return bookingTime;
    }
    
    public void setBookingTime(Calendar bookingTime) {
        this.bookingTime = bookingTime;
    }
    
    public String getCustomerName() {
        return customerName;
    }
    
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }
    
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
}
