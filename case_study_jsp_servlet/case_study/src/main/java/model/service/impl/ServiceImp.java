package model.service.impl;

import model.bean.Service;
import model.repository.IServiceRepository;
import model.repository.impl.ServiceRepositoryImp;
import model.service.IService;

import java.util.List;

public class ServiceImp implements IService {
    IServiceRepository serviceRepository = new ServiceRepositoryImp();

    @Override
    public List<Service> findAll() {
        return serviceRepository.findAll();
    }

    @Override
    public void addService(Service service) {
        serviceRepository.addService(service);
    }
}
