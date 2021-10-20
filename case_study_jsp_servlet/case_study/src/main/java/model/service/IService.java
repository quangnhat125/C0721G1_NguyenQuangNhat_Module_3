package model.service;

import model.bean.Service;

import java.util.List;

public interface IService {
    List<Service> findAll();

     void addService(Service service);
}
