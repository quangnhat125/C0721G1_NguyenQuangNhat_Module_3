package model.repository;

import model.bean.Customer;
import model.bean.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> findAll();
    void addEmployee(Employee employee);
}
