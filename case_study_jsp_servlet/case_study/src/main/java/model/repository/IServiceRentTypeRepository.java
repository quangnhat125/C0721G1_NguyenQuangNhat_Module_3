package model.repository;

import model.bean.RentType;

import java.util.List;

public interface IServiceRentTypeRepository {
    List<RentType> findAll();
}
