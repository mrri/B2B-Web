
package PricingAnalyticsObject;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
    @Id
    @Column(name = "product_id") 
    int product_id;
    @Column(name = "user_id") 
    int user_id;
    @Column(name="quantity")
    int quantity;
    @Column(name = "product_category") 
    int product_category;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    @Column(name = "product_name") 
    String product_name;
    @Column(name = "date") 
    Date date;
    @Column(name ="description", columnDefinition = "TEXT")
    String description;
    @Column(name = "price") 
    String price;
    @Column(name = "image", columnDefinition = "TEXT")
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

    public int getProduct_category() {
        return product_category;
    }

    public void setProduct_category(int product_category) {
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
    public Product(){
        this.user_id = 0;
        this.quantity = 0;
        this.product_name = "admin";
        this.product_category = 0;
        this.description = "admin";
        this.price = "0000";
        this.image = "";
        this.date = new Date(2000,01,01);
    }
    
    public Product(int user_id, int quantity, int product_category, String product_name, Date date,String description, String price, String image){
        this.quantity = quantity;
        this.user_id = user_id;
        this.product_category = product_category;
        this.product_name = product_name;
        this.date = date;
        this.description = description;
        this.price = price;
        this.image = image;
    }
}
