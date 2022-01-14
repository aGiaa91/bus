package com.example.bus.service;

import com.example.bus.Departure;
import com.example.bus.repository.DepartureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartureServiceImpl implements DepartureService {
    private final DepartureRepository departureRepository;

    @Autowired
    public DepartureServiceImpl(DepartureRepository departureRepository) {
        this.departureRepository = departureRepository;
    }
    @Override
    public List<Departure> getAll() {
        return this.departureRepository.findAll();
    }

    @Override
    public Departure getById(int id) {
        return this.departureRepository.getById(id);
    }

    @Override
    public List<Departure> findByCompany(int id) {
        return this.departureRepository.findByCompany(id);
    }

    @Override
    public void save(Departure departure) {
        this.departureRepository.save(departure);
    }

    @Override
    public void deleteById(int id) {

    }
}
