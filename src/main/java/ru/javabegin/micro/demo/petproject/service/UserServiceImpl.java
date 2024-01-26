package ru.javabegin.micro.demo.petproject.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.javabegin.micro.demo.petproject.entity.User;
import ru.javabegin.micro.demo.petproject.entity.dto.UserInfoDTO;
import ru.javabegin.micro.demo.petproject.entity.mappers.UserMapper;
import ru.javabegin.micro.demo.petproject.repository.UserRepository;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserServiceImpl {

    private final UserRepository userRepository;

    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    public Optional<User> findUserById(Long id) {
        return userRepository.findById(id);
    }

    @Transactional
    public void saveUser(User user) {
        userRepository.save(user);
    }

    @Transactional
    public void updateUser(User updatedUser) {
        Optional<User> optionalUser = userRepository.findById(updatedUser.getId());

        if (optionalUser.isPresent()) {
            User existingUser = optionalUser.get();
            existingUser.setUsername(updatedUser.getUsername());
            existingUser.setFirstname(updatedUser.getFirstname());
            existingUser.setLastname(updatedUser.getLastname());
            existingUser.setPassword(updatedUser.getPassword());
            existingUser.setRole(updatedUser.getRole());

            userRepository.save(existingUser);
        } else {
            throw new IllegalArgumentException("User not found");
        }
    }

    public UserInfoDTO findUserInfoDtoById(Long id) {
        Optional<User> optionalUser = userRepository.findById(id);
        if (optionalUser.isPresent()) {
            User user1 = optionalUser.get();
            return UserMapper.toDTO(user1);
        } else {
            throw new IllegalArgumentException("User not found");
        }
    }

    @Transactional
    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    public List<User> filterUsersByAgeCitySalaryRange(String city, Integer minAge, Integer maxAge, Double minSalary, Double maxSalary) {
        return userRepository.filterUsersByAgeCitySalaryRange(city, minAge, maxAge, minSalary, maxSalary);
    }
}