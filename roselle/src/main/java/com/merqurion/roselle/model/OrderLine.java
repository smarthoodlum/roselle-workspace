package com.merqurion.roselle.model;

import javax.persistence.*;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "order_lines", catalog = "restaurant")
@IdClass(OrderLineId.class)
public class OrderLine implements Item, java.io.Serializable {
    
    private static final long serialVersionUID = 7L;

    @Id
    private Integer menuId;
    
    @PrimaryKeyJoinColumn(name = "menu_id", referencedColumnName = "id")
    @ManyToOne
    private Menu menu;
    
    @Id
    private Long orderId;
    
    @PrimaryKeyJoinColumn(name = "order_id", referencedColumnName = "id")
    @ManyToOne
    private CustOrder custOrder;
    
    @Column(name = "quantity")
    private Integer quantity;
    
    @Column(name = "note")
    private String note;
    
    @Override
    public Integer getId() {
        if (getMenu() != null) {
            return getMenu().getId();
        }
        
        return 0;
    }
    
    public Menu getMenu() {
        return menu;
    }
    
    public void setMenu(Menu menu) {
        this.menu = menu;
    }
    
    public Integer getMenuId() {
        return menuId;
    }
    
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }
    
    @Override
    public String getName() {
        if (getMenu() != null) {
            return getMenu().getName();
        }
        
        return "<unknown>";
    }
    
    @Override
    public String getNote() {
        return note;
    }
    
    public void setNote(String note) {
        this.note = note.trim(); // klo sekiranya "  pedas kali  " jadi "pedas kali"
    }
    
    public Long getOrderId() {
        return orderId;
    }
    
    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }
    
    public CustOrder getCustOrder() {
        return custOrder;
    }
    
    public void setCustOrder(CustOrder custOrder) {
        this.custOrder = custOrder;
    }
    
    @Override
    public Double getAmount() {
        /*if (getMenu() != null) {
            return (menu.getPrice() * getQuantity()) - (menu.getPrice() * menu.getDiscount() * getQuantity());
            return (menu.getPrice() - menu.getPrice() * menu.getDiscount()) * getQuantity();
            return (getMenu().getPrice() * getQuantity()) * (1 - getMenu().getDiscount()) ;
        }*/
        
        return getQuantity() * getMenu().getPrice();
    }
    
    @Override
    public Integer getQuantity() {
        return quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

}
