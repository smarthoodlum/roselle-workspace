package com.merqurion.roselle.model;

/**
 * 
 * @author Orang Itu
 */
public class OrderLineId implements java.io.Serializable {

    private static final long serialVersionUID = 7L;
    
    private Integer menuId;
    
    private Long orderId;
    
public OrderLineId() { }
    
    public Integer getMenuId() {
        return menuId;
    }
    
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }
    
    public Long getOrderId() {
        return orderId;
    }
    
    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }
    
    @Override
    public boolean equals(Object object) {
        if (object == null || !(object instanceof OrderLineId)) {
            return false;
        }
        
        OrderLineId o1 = this;
        OrderLineId o2 = (OrderLineId) object;
        
        if (o1.getMenuId() != null ? o1.getMenuId().equals(o2.getMenuId()) : false) {
            return false;
        }
        
        if (o1.getOrderId() != null ? o1.getOrderId().equals(o2.getOrderId()) : false) {
            return false;
        }
        
        return true;
    }
    
    @Override
    public int hashCode() {
        int result;
        result = (getMenuId() != null ? getMenuId().hashCode() : 0);
        result = 31 * result + (getOrderId() != null ? getOrderId().hashCode() : 0);
        return result;
    }
}
