package ru.javabegin.micro.demo.petproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.javabegin.micro.demo.petproject.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {



}