package ru.javabegin.micro.demo.petproject.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.javabegin.micro.demo.petproject.repository.RoleRepository;

@Service
@RequiredArgsConstructor
public class RoleServiceImpl {

    private final RoleRepository roleRepository;



}
