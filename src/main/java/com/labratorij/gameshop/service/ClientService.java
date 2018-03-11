package com.labratorij.gameshop.service;

import com.labratorij.gameshop.entity.ClientEntity;

import java.util.List;

public interface ClientService {
    void addClient(ClientEntity client);
    void delete(int id);
    List<ClientEntity> getAll();
}
