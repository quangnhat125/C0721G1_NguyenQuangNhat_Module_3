package model.service.impl;

import model.bean.ServiceType;
import model.repository.IServiceTypeRepository;
import model.repository.impl.ServiceTypeRepositoryImp;
import model.service.IServiceType;

import java.util.List;

public class ServiceTypeImp implements IServiceType {
    IServiceTypeRepository serviceTypeRepository = new ServiceTypeRepositoryImp();
    @Override
    public List<ServiceType> findAll() {
        return serviceTypeRepository.findAll();
    }
}
