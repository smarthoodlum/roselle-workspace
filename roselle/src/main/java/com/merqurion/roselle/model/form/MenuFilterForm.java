package com.merqurion.roselle.model.form;

/**
 * 
 * @author Orang Itu
 */
public class MenuFilterForm implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999014l;
    
    private String menuName = "";
    private Integer categoryId = -1;
    private String orderByType = "asc";
    
    public Integer getCategoryId() {
        return categoryId;
    }
    
    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }
    
    public String getMenuName() {
        return menuName;
    }
    
    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }
    
    public String getOrderByType() {
        return orderByType;
    }
    
    public void setOrderByType(String orderByType) {
        this.orderByType = orderByType;
    }
    
}
