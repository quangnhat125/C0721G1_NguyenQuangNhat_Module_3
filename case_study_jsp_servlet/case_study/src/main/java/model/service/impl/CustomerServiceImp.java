package model.service.impl;

import model.bean.Customer;
import model.repository.ICustomerRepository;
import model.repository.impl.CustomerRepositoryImp;
import model.service.ICustomerService;

import java.util.List;

public class CustomerServiceImp implements ICustomerService {
    ICustomerRepository customerRepository = new CustomerRepositoryImp();
    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();
    }

    @Override
    public void addCustomer(Customer customer) {
        customerRepository.addCustomer(customer);
    }

    @Override
    public void deleteCustomer(int id) {
        customerRepository.deleteCustomer(id);
    }

    @Override
    public void editCustomer( Customer customer) {
        customerRepository.editCustomer(customer);
    }

    @Override
    public Customer getCustomerById(int id) {
        return customerRepository.getCustomerById(id);
    }


    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }

    @Override
    public List<Customer> searchCustomer(int keySearch, String valueSearch) {
        return customerRepository.searchCustomer(keySearch, valueSearch);
    }
}
