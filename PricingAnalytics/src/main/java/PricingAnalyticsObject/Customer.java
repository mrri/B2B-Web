/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PricingAnalyticsObject;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer  implements Serializable{
    @Id
    @Column(name="customer_id")
    int customer_id;
    @Column(name="customer_name")
    String customer_name;
    @Column(name="customer_mail")
    String customer_mail;
    @Column(name="customer_address")
    String customer_address;
    @Column(name="customer_country")
    String customer_country;
    @Column(name="customer_phone")
    String customer_phone;

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public String getCustomer_mail() {
        return customer_mail;
    }

    public void setCustomer_mail(String customer_mail) {
        this.customer_mail = customer_mail;
    }

    public String getCustomer_address() {
        return customer_address;
    }

    public void setCustomer_address(String customer_address) {
        this.customer_address = customer_address;
    }

    public String getCustomer_country() {
        return customer_country;
    }

    public void setCustomer_country(String customer_country) {
        this.customer_country = customer_country;
    }

    public String getCustomer_phone() {
        return customer_phone;
    }

    public void setCustomer_phone(String customer_phone) {
        this.customer_phone = customer_phone;
    }
    
    public Customer(){
        
    }
    
    public Customer(String name, String mail, String address, String country, String phone){
        this.customer_name = name;
        this.customer_address = address;
        this.customer_mail = mail;
        this.customer_country = country;
        this.customer_phone = phone;
    }
}
