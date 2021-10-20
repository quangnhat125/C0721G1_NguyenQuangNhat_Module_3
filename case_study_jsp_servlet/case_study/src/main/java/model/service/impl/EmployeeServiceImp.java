package model.service.impl;

import model.bean.Employee;
import model.repository.IEmployeeRepository;
import model.repository.impl.EmployeeRepositoryImp;
import model.service.IEmployeeService;

import java.util.List;

public class EmployeeServiceImp implements IEmployeeService {
    IEmployeeRepository employeeRepository = new EmployeeRepositoryImp();
    @Override
    public List<Employee> findAll() {
        return employeeRepository.findAll();
    }

    @Override
    public void addEmployee(Employee employee) {
        employeeRepository.addEmployee(employee);
    }
}
