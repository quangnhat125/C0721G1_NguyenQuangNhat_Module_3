package model.bean;

public class Employee  extends Person{
    private double employeeSalary;
    private int positionId;
    private int educationDegreeId;
    private int divisionId;
    private String username;

    public Employee(double employeeSalary, int positionId, int educationDegreeId, int divisionId, String username) {
        this.employeeSalary = employeeSalary;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
        this.username = username;
    }

    public Employee(int id, String personCode, String fullName, String birthday, String phoneNumber, String email, String address, int gender, String idCard, double employeeSalary, int positionId, int educationDegreeId, int divisionId, String username) {
        super(id, personCode, fullName, birthday, phoneNumber, email, address, gender, idCard);
        this.employeeSalary = employeeSalary;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
        this.username = username;
    }

    public Employee(int id, String personCode, String fullName, String birthday, String phoneNumber, String email, String address, String idCard, double employeeSalary, int positionId, int educationDegreeId, int divisionId, String username) {
        super(id, personCode, fullName, birthday, phoneNumber, email, address, idCard);
        this.employeeSalary = employeeSalary;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
        this.username = username;
    }

    public Employee(int id, String personCode, String fullName, String birthday, String phoneNumber, String email, String address, String idCard, double employeeSalary, int positionId, int educationDegreeId, int divisionId) {
        super(id, personCode, fullName, birthday, phoneNumber, email, address, idCard);
        this.employeeSalary = employeeSalary;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
    }

    public Employee(String personCode, String fullName, String birthday, String phoneNumber, String email, String address, int gender, String idCard, double employeeSalary, int positionId, int educationDegreeId, int divisionId) {
        super(personCode, fullName, birthday, phoneNumber, email, address, gender, idCard);
        this.employeeSalary = employeeSalary;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
    }

    public double getEmployeeSalary() {
        return employeeSalary;
    }

    public void setEmployeeSalary(double employeeSalary) {
        this.employeeSalary = employeeSalary;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }

    public int getEducationDegreeId() {
        return educationDegreeId;
    }

    public void setEducationDegreeId(int educationDegreeId) {
        this.educationDegreeId = educationDegreeId;
    }

    public int getDivisionId() {
        return divisionId;
    }

    public void setDivisionId(int divisionId) {
        this.divisionId = divisionId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
