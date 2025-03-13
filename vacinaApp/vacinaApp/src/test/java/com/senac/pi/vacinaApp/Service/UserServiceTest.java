package com.senac.pi.vacinaApp.Service;

import com.senac.pi.vacinaApp.entity.User;
import com.senac.pi.vacinaApp.repository.UserRepository;
import com.senac.pi.vacinaApp.service.UserService;
import com.senac.pi.vacinaApp.type.UserCreateRequest;
import com.senac.pi.vacinaApp.type.UserCreateResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

public class UserServiceTest {

    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private UserService userService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testCriarUsuario() {
        // Arrange
        UserCreateRequest request = new UserCreateRequest();
        request.setName("John Doe");
        request.setDataNascimento(new Date());
        request.setDdd("11");
        request.setTelefone("999999999");
        request.setCpf("12345678901");
        request.setEmail("john.doe@example.com");

        User savedUser = new User();
        savedUser.setIdUser(1L); // Changed from setIdUsuario to setIdUser
        savedUser.setName("John Doe");
        savedUser.setDataNascimento(new Date());
        savedUser.setDdd("11");
        savedUser.setTelefone("999999999");
        savedUser.setCpf("12345678901");
        savedUser.setEmail("john.doe@example.com");

        when(userRepository.save(any(User.class))).thenReturn(savedUser);

        // Act
        UserCreateResponse response = userService.criarUsuario(request);

        // Assert
        assertEquals(1L, response.getIdUser()); // Changed from getIdUsuario to getIdUser
        assertEquals("John Doe", response.getName());
    }

    @Test
    public void testBuscarUsuarioPorId() {
        // Arrange
        User usuario = new User();
        usuario.setIdUser(1L); // Changed from setIdUsuario to setIdUser
        usuario.setName("John Doe");
        usuario.setDataNascimento(new Date());
        usuario.setDdd("11");
        usuario.setTelefone("999999999");
        usuario.setCpf("12345678901");
        usuario.setEmail("john.doe@example.com");

        when(userRepository.findById(1L)).thenReturn(java.util.Optional.of(usuario));

        // Act
        UserCreateResponse response = userService.buscarUsuarioPorId(1L);

        // Assert
        assertEquals(1L, response.getIdUser()); // Changed from getIdUsuario to getIdUser
        assertEquals("John Doe", response.getName());
    }
}