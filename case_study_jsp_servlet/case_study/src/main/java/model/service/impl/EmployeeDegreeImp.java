package model.service.impl;

import model.bean.EducationDegree;
import model.repository.IEmployeeEducationRepository;
import model.repository.impl.EmployeeEducationRepositoryImp;
import model.service.IEducationDegreeService;

import java.util.List;

public class EmployeeDegreeImp implements IEducationDegreeService {
    IEmployeeEducationRepository educationDegreeService = new EmployeeEducationRepositoryImp();
    @Override
    public List<EducationDegree> findAll() {
        return educationDegreeService.findAll();
    }
}
