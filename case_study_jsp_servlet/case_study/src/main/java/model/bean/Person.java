package model.bean;

public abstract class Person {
    private int id;
    private String personCode;
    private String fullName;
    private String birthday;
    private String phoneNumber;
    private String email;
    private String address;
    private int gender;
    private String idCard;

    public Person(int id, String personCode, String fullName, String birthday, String phoneNumber, String email, String address, String idCard) {
        this.id = id;
        this.personCode = personCode;
        this.fullName = fullName;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.idCard = idCard;
    }

    public Person() {
    }

    public Person(String personCode, String fullName, String birthday, String phoneNumber, String email, String address, int gender, String idCard) {
        this.personCode = personCode;
        this.fullName = fullName;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.gender = gender;
        this.idCard = idCard;

    }

    public Person(int id, String personCode, String fullName, String birthday, String phoneNumber, String email, String address, int gender, String idCard) {
        this.id = id;
        this.personCode = personCode;
        this.fullName = fullName;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.gender = gender;
        this.idCard = idCard;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPersonCode() {
        return personCode;
    }

    public void setPersonCode(String personCode) {
        this.personCode = personCode;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }
}
