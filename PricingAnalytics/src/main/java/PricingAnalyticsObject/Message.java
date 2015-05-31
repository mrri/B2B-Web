
package PricingAnalyticsObject;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer_message")
public class Message {
    @Id
    @Column(name="message_id")
    int message_id;
    @Column(name="user_id")
    int user_id;
    @Column(name="product_id")
    int product_id;
    @Column(name="customer_id")
    int customer_id;
    @Column(name="message_content", columnDefinition = "TEXT")
    String message_content;

    public int getMessage_id() {
        return message_id;
    }

    public void setMessage_id(int message_id) {
        this.message_id = message_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getMessage_content() {
        return message_content;
    }

    public void setMessage_content(String message_content) {
        this.message_content = message_content;
    }
    
    public Message(){
        
    }
    
    public Message(int user_id, int product_id, int customer_id, String message){
        this.user_id = user_id;
        this.product_id = product_id;
        this.customer_id = customer_id;
        this.message_content = message;
    }
    
}   
