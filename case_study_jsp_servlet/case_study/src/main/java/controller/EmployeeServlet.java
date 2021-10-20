package controller;

import model.bean.*;
import model.service.IEducationDegreeService;
import model.service.IEmployeeDivisionService;
import model.service.IEmployeePositionService;
import model.service.IEmployeeService;
import model.service.impl.EmployeeDegreeImp;
import model.service.impl.EmployeeDivisionImp;
import model.service.impl.EmployeePositionImp;
import model.service.impl.EmployeeServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", value = "/employee")
public class EmployeeServlet extends HttpServlet {
    IEmployeeService employeeService = new EmployeeServiceImp();
    IEmployeePositionService employeePositionService = new EmployeePositionImp();
    IEducationDegreeService educationDegreeService = new EmployeeDegreeImp();
    IEmployeeDivisionService employeeDivisionService = new EmployeeDivisionImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createCustomer(request, response);
                break;
        }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String code = request.getParameter("personCode");
        String birthday = request.getParameter("birthday");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Double salary = Double.parseDouble(request.getParameter("salary"));
        int degree = Integer.parseInt(request.getParameter("education_degree_id"));
        int position = Integer.parseInt(request.getParameter("position_id"));
        int division = Integer.parseInt(request.getParameter("division_id"));

        Employee employee = new Employee(code,name,birthday,phone,email,address,gender,idCard, salary, position, degree, division);
        employeeService.addEmployee(employee);
        request.setAttribute("message", "Add completed!");
        showListEmployee(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "employee":
                showListEmployee(request, response);
                break;
            case "create":
                addEmployee(request, response);
                break;
        }
    }

    private void addEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employeeList = employeeService.findAll();
        List<EmployeePosition> employeePositionList = employeePositionService.findAll();
        List<EmployeeDivision> employeeDivisionList = employeeDivisionService.findAll();
        List<EducationDegree> educationDegreeList = educationDegreeService.findAll();
        request.setAttribute("employeeList", employeeList);
        request.setAttribute("employeePositionList", employeePositionList);
        request.setAttribute("employeeDivisionList", employeeDivisionList);
        request.setAttribute("educationDegreeList", educationDegreeList);
        request.getRequestDispatcher("/employee/add.jsp").forward(request, response);
    }

    private void showListEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employeeList = employeeService.findAll();
        request.setAttribute("employeeList", employeeList);
        request.getRequestDispatcher("/employee/list.jsp").forward(request, response);

    }
}
