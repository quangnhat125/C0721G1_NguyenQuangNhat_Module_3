package model.service;

import model.bean.RentType;
import model.bean.ServiceType;

import java.util.List;

public interface IServiceType {
    List<ServiceType> findAll();
}

