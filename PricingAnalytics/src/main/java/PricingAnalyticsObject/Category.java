
package PricingAnalyticsObject;
/*
Category: Thong tin danh muc san pham
*/
public class Category {
    String name;
    int total_product;
    
    public Category(){
        
    }
    
    public Category(String name, int total){
        this.name = name;
        this.total_product = total;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getTotal_product() {
        return total_product;
    }

    public void setTotal_product(int total_product) {
        this.total_product = total_product;
    }
    
}
