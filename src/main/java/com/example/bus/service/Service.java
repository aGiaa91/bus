package com.example.bus.service;

import com.example.bus.Company;

import java.util.List;

public interface Service<T> {
    List<T> getAll();

    T getById(int id);

    void save(T t);

    void deleteById(int id);
}
