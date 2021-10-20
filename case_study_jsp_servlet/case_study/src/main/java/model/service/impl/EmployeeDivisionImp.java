package model.service.impl;

import model.bean.EmployeeDivision;
import model.repository.IEmployeeDivisionRepository;
import model.repository.impl.EmployeeDivisionRepositoryImp;
import model.service.IEmployeeDivisionService;

import java.util.List;

public class EmployeeDivisionImp implements IEmployeeDivisionService {
    IEmployeeDivisionRepository employeeDivisionRepository = new EmployeeDivisionRepositoryImp();
    @Override
    public List<EmployeeDivision> findAll() {
        return employeeDivisionRepository.findAll();
    }
}
