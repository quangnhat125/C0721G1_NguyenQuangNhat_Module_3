package model.service;

import model.bean.EmployeeDivision;
import model.bean.EmployeePosition;

import java.util.List;

public interface IEmployeePositionService {
    List<EmployeePosition> findAll();
}
