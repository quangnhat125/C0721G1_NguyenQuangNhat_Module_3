package model.repository.impl;

import com.sun.org.apache.xerces.internal.xs.XSTerm;
import model.bean.Customer;
import model.repository.DBConnection;
import model.repository.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImp implements ICustomerRepository {
    private static String SEARCH_CUSTOMER = "SELECT* FROM customer " +
            "where";
    private static final String SELECT_ALL_CUSTOMER = "SELECT * FROM customer";
    private static final String INSERT_CUSTOMER = "INSERT INTO customer ( customer_code, customer_type_id, customer_name," +
            " customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email, customer_address) \n" +
            "VALUES (?, ?, ?, ?, ?, ?, ?,?, ?)";
    private static final String DELETE_CUSTOMER = "DELETE FROM customer WHERE customer_id = ?;";
    private static final String UPDATE_CUSTOMER = "UPDATE customer SET customer_code = ?, customer_type_id = ?," +
            " customer_name = ?, customer_birthday = ?, customer_gender = ?, customer_id_card = ?," +
            " customer_phone = ?, customer_email = ?, customer_address = ? WHERE customer_id = ?; ";
    private static final String SELECT_CUSTOMER_BY_ID = "SELECT * FROM customer WHERE customer_id = ?;";

    @Override
    public List<Customer> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Customer> customerList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
                resultSet = statement.executeQuery();
                Customer customer = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("customer_id");
                    String customerCode = resultSet.getString("customer_code");
                    int customerTypeId = resultSet.getInt("customer_type_id");
                    String customerName = resultSet.getString("customer_name");
                    String customerBirthday = resultSet.getString("customer_birthday");
                    int customerGender = resultSet.getInt("customer_gender");
                    String customerIdCard = resultSet.getString("customer_id_card");
                    String customerPhone = resultSet.getString("customer_phone");
                    String customerEmail = resultSet.getString("customer_email");
                    String customerAddress = resultSet.getString("customer_address");
                    customer = new Customer(id, customerCode, customerName, customerBirthday, customerPhone, customerEmail, customerAddress, customerGender, customerIdCard, customerTypeId);
                    customerList.add(customer);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            DBConnection.close();
        }

        return customerList;
    }

    @Override
    public void addCustomer(Customer customer) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(INSERT_CUSTOMER);
                statement.setString(1, customer.getPersonCode());
                statement.setInt(2, customer.getCustomer_type());
                statement.setString(3, customer.getFullName());
                statement.setString(4, customer.getBirthday());
                statement.setInt(5, customer.getGender());
                statement.setString(6, customer.getIdCard());
                statement.setString(7, customer.getPhoneNumber());
                statement.setString(8, customer.getEmail());
                statement.setString(9, customer.getAddress());
                statement.executeUpdate();

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            DBConnection.close();
        }
    }

    @Override
    public void deleteCustomer(int id) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(DELETE_CUSTOMER);
                statement.setInt(1, id);
                statement.executeUpdate();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            DBConnection.close();
        }
    }

    @Override
    public void editCustomer(Customer customer) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(UPDATE_CUSTOMER);
                statement.setString(1, customer.getPersonCode());
                statement.setInt(2, customer.getCustomer_type());
                statement.setString(3, customer.getFullName());
                statement.setString(4, customer.getBirthday());
                statement.setInt(5, customer.getGender());
                statement.setString(6, customer.getIdCard());
                statement.setString(7, customer.getPhoneNumber());
                statement.setString(8, customer.getEmail());
                statement.setString(9, customer.getAddress());
                statement.setInt(10, customer.getId());
                statement.executeUpdate();

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            DBConnection.close();
        }
    }

    @Override
    public Customer getCustomerById(int id) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Customer customer = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
                statement.setInt(1, id);
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    String customerCode = resultSet.getString("customer_code");
                    int customerTypeId = resultSet.getInt("customer_type_id");
                    String customerName = resultSet.getString("customer_name");
                    String customerBirthday = resultSet.getString("customer_birthday");
                    int customerGender = resultSet.getInt("customer_gender");
                    String customerIdCard = resultSet.getString("customer_id_card");
                    String customerPhone = resultSet.getString("customer_phone");
                    String customerEmail = resultSet.getString("customer_email");
                    String customerAddress = resultSet.getString("customer_address");
                    customer = new Customer(id, customerCode, customerName, customerBirthday, customerPhone, customerEmail, customerAddress, customerGender, customerIdCard, customerTypeId);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            DBConnection.close();
        }

        return customer;
    }


    @Override
    public Customer findById(int id) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Customer customer = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
                statement.setInt(1, id);
                resultSet = statement.executeQuery();
                    String customerCode = resultSet.getString("customer_code");
                    int customerTypeId = resultSet.getInt("customer_type_id");
                    String customerName = resultSet.getString("customer_name");
                    String customerBirthday = resultSet.getString("customer_birthday");
                    int customerGender = resultSet.getInt("customer_gender");
                    String customerIdCard = resultSet.getString("customer_id_card");
                    String customerPhone = resultSet.getString("customer_phone");
                    String customerEmail = resultSet.getString("customer_email");
                    String customerAddress = resultSet.getString("customer_address");
                    customer = new Customer(id, customerCode, customerName, customerBirthday, customerPhone, customerEmail, customerAddress, customerGender, customerIdCard, customerTypeId);

            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return customer;
    }

    @Override
    public List<Customer> searchCustomer(int keySearch, String valueSearch) {
        SEARCH_CUSTOMER = "SELECT* FROM customer " +
                "where";
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Customer> customerList = new ArrayList<>();
        String property = "";
        int customer_type_id = 0;
        int gen = -1;
        switch (keySearch) {
            case 1:
                property = "customer_name";
                break;
            case 2:
                property = "customer_gender";
                switch (valueSearch) {
                    case "Male":
                        gen = 1;
                        break;
                    case "Female":
                        gen = 0;
                        break;
                    case "Other":
                        gen = 2;
                        break;
                }
                break;
            case 3:
                property = "customer_address";
                break;
            case 4:
                property = "customer_type_id";
                switch (valueSearch) {
                    case "Platinium":
                        customer_type_id = 2;
                        break;
                    case "Diamond":
                        customer_type_id = 1;
                        break;
                    case "Gold":
                        customer_type_id = 3;
                        break;
                    case "Silver":
                        customer_type_id = 4;
                        break;
                    case "Member":
                        customer_type_id = 5;
                        break;
                }
                break;
            default:
                break;
        }
        SEARCH_CUSTOMER += " " + property + "=" + "?" + " ;";
//       "SELECT* FROM customer " +
//            "where";
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SEARCH_CUSTOMER);
                switch (property) {
                    case "customer_type_id":
                        statement.setInt(1, customer_type_id);
                        break;
                    case "customer_gender":
                        statement.setInt(1, gen);
                        break;
                    default:
                        statement.setString(1, valueSearch);
                        break;
                }
                resultSet = statement.executeQuery();
                Customer customer = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("customer_id");
                    String customerCode = resultSet.getString("customer_code");
                    int customerTypeId = resultSet.getInt("customer_type_id");
                    String customerName = resultSet.getString("customer_name");
                    String customerBirthday = resultSet.getString("customer_birthday");
                    int customerGender = resultSet.getInt("customer_gender");
                    String customerIdCard = resultSet.getString("customer_id_card");
                    String customerPhone = resultSet.getString("customer_phone");
                    String customerEmail = resultSet.getString("customer_email");
                    String customerAddress = resultSet.getString("customer_address");
                    customer = new Customer(id, customerCode, customerName, customerBirthday, customerPhone, customerEmail, customerAddress, customerGender, customerIdCard, customerTypeId);
                    customerList.add(customer);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return customerList;
    }
}


