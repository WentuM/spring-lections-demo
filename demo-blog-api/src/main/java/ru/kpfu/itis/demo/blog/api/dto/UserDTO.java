package ru.kpfu.itis.demo.blog.api.dto;

import lombok.Data;

@Data
public class UserDTO {
    private Long userId;
    private String userName;
    private String userEmail;
}