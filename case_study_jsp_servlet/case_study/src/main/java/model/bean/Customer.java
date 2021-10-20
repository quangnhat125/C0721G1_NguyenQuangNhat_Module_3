package model.bean;

public class Customer extends Person {
    private int customer_type;

    public Customer() {
    }

    public Customer(String personCode, String fullName, String birthday, String phoneNumber, String email, String address, int gender, String idCard, int customer_type) {
        super(personCode, fullName, birthday, phoneNumber, email, address, gender, idCard);
        this.customer_type = customer_type;
    }

    public Customer(int id, String personCode, String fullName, String birthday, String phoneNumber, String email, String address, int gender, String idCard, int customer_type) {
        super(id, personCode, fullName, birthday, phoneNumber, email, address, gender, idCard);
        this.customer_type = customer_type;
    }

    public int getCustomer_type() {
        return customer_type;
    }

    public void setCustomer_type(int customer_type) {
        this.customer_type = customer_type;
    }
}
