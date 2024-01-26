package ru.javabegin.micro.demo.petproject.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.javabegin.micro.demo.petproject.repository.UserRepository;

@Service
@RequiredArgsConstructor
public class UserServiceImpl {

    private final UserRepository userRepository;



}