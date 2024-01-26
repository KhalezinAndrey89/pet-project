package ru.javabegin.micro.demo.petproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.javabegin.micro.demo.petproject.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {



}
