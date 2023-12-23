package com.packt.cardatabase;

import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import static org.junit.jupiter.api.Assertions.assertTrue;

/**
 * @author: Elliot
 * @description:
 * @date: Created in 17:05 2023/12/23
 * @modified by:
 */
public class PasswordEncoderTest {
  @Test
  public void testPasswordEncoder() {
    // 创建 BCryptPasswordEncoder 实例
    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    // 明文密码
    String rawPassword = "admin";

    // 使用 BCrypt 加密密码
    String encodedPassword = passwordEncoder.encode(rawPassword);

    // 输出加密后的密码
    System.out.println("Encoded Password: " + encodedPassword);

    // 验证密码是否匹配
    assertTrue(passwordEncoder.matches(rawPassword, encodedPassword));
  }
}
