package ru.javabegin.micro.demo.petproject.entity.mappers;

import org.modelmapper.ModelMapper;
import ru.javabegin.micro.demo.petproject.entity.User;
import ru.javabegin.micro.demo.petproject.entity.dto.UserInfoDTO;

public class UserMapper {

    private static ModelMapper modelMapper = new ModelMapper();

    public static UserInfoDTO toDTO(User user) {
        return modelMapper.map(user, UserInfoDTO.class);
    }

    public static User toEntity(UserInfoDTO userDTO) {
        return modelMapper.map(userDTO, User.class);
    }
}
