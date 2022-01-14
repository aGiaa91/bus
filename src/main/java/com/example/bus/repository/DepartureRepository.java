package com.example.bus.repository;

import com.example.bus.Departure;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepartureRepository extends JpaRepository<Departure, Integer> {
    @Query("select d from Departure d where d.company.id = ?1 order by dateOfDeparture, timeOfDeparture")
    List<Departure> findByCompany(Integer id);
    @Query("select d from Departure d order by dateOfDeparture, timeOfDeparture")
    List<Departure> findAll();
}
