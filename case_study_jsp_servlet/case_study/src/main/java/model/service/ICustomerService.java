package model.service;

import model.bean.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();

    void addCustomer(Customer customer);

    void deleteCustomer(int id);

    void editCustomer(Customer customer);

    Customer getCustomerById(int id);

    Customer findById(int id);

    List<Customer> searchCustomer(int keySearch, String valueSearch);
}
