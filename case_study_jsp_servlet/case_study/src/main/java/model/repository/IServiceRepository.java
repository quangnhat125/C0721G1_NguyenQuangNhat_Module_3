package model.repository;

import model.bean.Service;

import java.util.List;

public interface IServiceRepository {
    List<Service> findAll();

    void addService(Service service);
}
