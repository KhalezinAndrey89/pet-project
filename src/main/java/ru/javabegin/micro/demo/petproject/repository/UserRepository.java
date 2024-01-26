package ru.javabegin.micro.demo.petproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.javabegin.micro.demo.petproject.entity.User;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query("SELECT u FROM User u WHERE u.age >= :minAge " +
            "AND u.age <= :maxAge " +
            "AND u.city = :city " +
            "AND u.salary >= :minSalary " +
            "AND u.salary <= :maxSalary")
    List<User> filterUsersByAgeCitySalaryRange(String city,
                                               Integer minAge,
                                               Integer maxAge,
                                               Double minSalary,
                                               Double maxSalary);

}