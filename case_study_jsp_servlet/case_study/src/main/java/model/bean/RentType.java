package model.bean;

public class RentType {
    private int rentTypeId;
    private String rentType;

    public RentType() {
    }

    public RentType(int rentTypeId, String rentType) {
        this.rentTypeId = rentTypeId;
        this.rentType = rentType;
    }

    public int getRentTypeId() {
        return rentTypeId;
    }

    public void setRentTypeId(int rentTypeId) {
        this.rentTypeId = rentTypeId;
    }

    public String getRentType() {
        return rentType;
    }

    public void setRentType(String rentType) {
        this.rentType = rentType;
    }
}
