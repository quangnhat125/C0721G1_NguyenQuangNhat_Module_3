package model.service;

import model.bean.Customer;
import model.bean.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> findAll();
    void addEmployee(Employee employee);
}
