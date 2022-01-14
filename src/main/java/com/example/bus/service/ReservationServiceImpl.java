package com.example.bus.service;

import com.example.bus.Reservation;
import com.example.bus.repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservationServiceImpl implements ReservationService {
    private final ReservationRepository reservationRepository;

    @Autowired
    public ReservationServiceImpl(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    @Override
    public List<Reservation> getAll() {
        return null;
    }

    @Override
    public Reservation getById(int id) {
        return reservationRepository.getById(id);
    }

    @Override
    public void save(Reservation reservation) {
        this.reservationRepository.save(reservation);
    }

    @Override
    public void deleteById(int id) {
        this.reservationRepository.deleteById(id);
    }
}
