package model.service.impl;

import model.bean.EmployeePosition;
import model.repository.IEmployeePositionRepository;
import model.repository.impl.EmployeePositionRepositoryImp;
import model.service.IEmployeePositionService;

import java.util.List;

public class EmployeePositionImp implements IEmployeePositionService {
    IEmployeePositionRepository employeePositionRepository = new EmployeePositionRepositoryImp();
    @Override
    public List<EmployeePosition> findAll() {
        return employeePositionRepository.findAll();
    }
}
