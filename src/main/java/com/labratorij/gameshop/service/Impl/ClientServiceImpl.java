package com.labratorij.gameshop.service.Impl;


import com.labratorij.gameshop.entity.ClientEntity;
import com.labratorij.gameshop.repository.ClientRepository;
import com.labratorij.gameshop.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientServiceImpl implements ClientService {
    @Autowired
    private ClientRepository clientRepository;

    public void addClient(ClientEntity client) {
        clientRepository.saveAndFlush(client);
    }

    public void delete(int id) {
        clientRepository.delete(id);
    }

    public List<ClientEntity> getAll() {
        return clientRepository.findAll();
    }
}
