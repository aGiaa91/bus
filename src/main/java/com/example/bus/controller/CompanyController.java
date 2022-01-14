package com.example.bus.controller;

import com.example.bus.Company;
import com.example.bus.service.CompanyService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.PrintWriter;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/company")
public class CompanyController {
    private final CompanyService companyService;

    @Autowired
    public CompanyController(CompanyService companyService) {
        this.companyService = companyService;
    }

    @GetMapping("/")
    public List<Company> getAll() {
        return companyService.getAll();
    }

    @GetMapping("/{id}")
    @ResponseBody
    public Company getById(@PathVariable int id) {
        return companyService.getById(id);
    }

    @PostMapping
    public Company save(@RequestBody Company company) {
        companyService.save(company);
        return company;
    }

    @DeleteMapping("/{id}")
    public String delete(@PathVariable int id) {
        Company company = companyService.getById(id);
        if (company == null) {
            throw new RuntimeException("Employee id not found - " + id);
        }
        companyService.deleteById(id);
        return "Successfully deleted";
    }
}
