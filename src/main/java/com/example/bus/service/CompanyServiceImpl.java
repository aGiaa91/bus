package com.example.bus.service;

import com.example.bus.Company;
import com.example.bus.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CompanyServiceImpl implements CompanyService {
    private CompanyRepository companyRepository;

    @Autowired
    public CompanyServiceImpl(CompanyRepository companyRepository) {
        this.companyRepository = companyRepository;
    }

    @Override
    public void save(Company company) {
        companyRepository.save(company);
    }

    @Override
    public List<Company> getAll() {
        return companyRepository.findAll();
    }

    public Company findById(int id) {
        return companyRepository.getById(id);
    }

    @Override
    public Company getById(int id) {
        Optional<Company> company = companyRepository.findById(id);
        Company theCompany = null;
        if(company.isPresent()) {
            theCompany = company.get();
            return theCompany;
        } else {
            throw new RuntimeException("Didn't find company id - " + id);
        }
    }

    @Override
    public void deleteById(int id) {
        companyRepository.deleteById(id);
    }
}
