package model.service.impl;

import model.bean.CustomerType;
import model.repository.ICustomerTypeRepository;
import model.repository.impl.CustomerTypeRepositoryImp;
import model.service.ICustomerTypeService;

import java.util.List;

public class CustomerTypeServiceImp implements ICustomerTypeService {
    ICustomerTypeRepository customerTypeRepositoryImp = new CustomerTypeRepositoryImp();
    @Override
    public List<CustomerType> findAll() {
        return customerTypeRepositoryImp.findAll();
    }
}
