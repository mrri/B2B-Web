
package PricingAnalyticsObject;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
    @Id
    int product_id;
    int user_id;
    String product_category;
    String product_name;
    @Column(columnDefinition = "TEXT")
    String description;
    String price;
    @Column(columnDefinition = "TEXT")
    String image;

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getProduct_category() {
        return product_category;
    }

    public void setProduct_category(String product_category) {
        this.product_category = product_category;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    public Product(){
        
    }
    
    public Product(int user_id, String product_category, String product_name, String description, String price, String image){
        this.user_id = user_id;
        this.product_category = product_category;
        this.product_name = product_name;
        this.description = description;
        this.price = price;
        this.image = image;
    }
}
