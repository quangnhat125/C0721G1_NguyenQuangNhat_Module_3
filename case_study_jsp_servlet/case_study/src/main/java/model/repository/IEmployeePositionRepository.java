package model.repository;

import model.bean.EmployeePosition;

import java.util.List;

public interface IEmployeePositionRepository {
    List<EmployeePosition> findAll();
}
