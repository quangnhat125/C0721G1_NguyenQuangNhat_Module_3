package model.service.impl;

import model.bean.RentType;
import model.repository.IServiceRentTypeRepository;
import model.repository.impl.ServiceRentTypeRepositoryImp;
import model.service.IServiceRentType;

import java.util.List;

public class ServiceRentTypeImp implements IServiceRentType {
    IServiceRentTypeRepository serviceRentTypeRepository = new ServiceRentTypeRepositoryImp();
    @Override
    public List<RentType> findAll() {
        return serviceRentTypeRepository.findAll();
    }
}
