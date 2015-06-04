/*
 *Thong tin nha cung cap
 */
package PricingAnalyticsObject;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Quoc Huy Ngo
 */
@Entity
@Table(name="user")
public class UserInfo implements Serializable {
    
    @Id
    @Column(name="user_id")
    private int user_id;
    
    @Column(name="user_name")
    private String user_name;
    
    @Column(name="password")
    private String password;
    
    @Column(name="email")
    private String email;
    
    @Column(name="full_name")
    private String full_name;
    
    @Column(name="company_name")
    private String company_name;
    
    @Column(name="website")
    private String website;
    
    @Column(name="address")
    private String address;
    
    @Column(name="country")
    private String country;
    
    @Column(name="phone")
    private String phone;
    
    @Column(name="fax")
    private String fax;
    
    @Column(name="bussiness_category")
    private int bussiness_category;
    
    @Column(name="company_description", columnDefinition = "TEXT")
    private String company_description;
    
    public int getId() {
        return user_id;
    }

    public void setId(int id) {
        this.user_id = id;
    }

    public String getUserName() {
        return user_name;
    }

    public void setUserName(String userName) {
        this.user_name = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCity() {
        return address;
    }

    public void setCity(String city) {
        this.address = city;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public int getBussiness_category() {
        return bussiness_category;
    }

    public void setBussiness_category(int bussiness_category) {
        this.bussiness_category = bussiness_category;
    }

    public String getCompany_description() {
        return company_description;
    }

    public void setCompany_description(String company_description) {
        this.company_description = company_description;
    }
    
    
    public UserInfo(){
        this.bussiness_category = 0;
        this.address = "Ho Chi Minh";
        this.company_description = "Hello";
        this.company_name = "Cong Ty TNHH Ban Thit Bo";
        this.country = "Viet Nam";
        this.email = "support@banthibo.vn";
        this.fax = "23098234";
        this.full_name = "Giam Doc";
        this.password = "password";
        this.phone = "0933910122";
        this.user_name = "Ngo";
        this.website = "http://banthitbo.vn";
    }
     public UserInfo(String username, String password, String email, String full_name
                    ,String company_name, String website, String address, String country
                    ,String phone, String fax, int business_category, String company_description){
        this.user_name = username;
        this.password = password;
        this.email = email;
        this.full_name = full_name;
        this.company_name = company_name;
        this.website = website;
        this.address = address;
        this.country = country;
        this.fax = fax;
        this.phone = phone;
        this.bussiness_category = business_category;
        this.company_description = company_description;
        
    }
}
