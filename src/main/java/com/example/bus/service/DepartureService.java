package com.example.bus.service;

import com.example.bus.Departure;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface DepartureService extends Service<Departure> {
    List<Departure> findByCompany(int id);
}
