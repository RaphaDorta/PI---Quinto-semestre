package com.senac.pi.vacinaApp.service;

import com.senac.pi.vacinaApp.entity.User;
import com.senac.pi.vacinaApp.repository.UserRepository;
import com.senac.pi.vacinaApp.type.UserCreateRequest;
import com.senac.pi.vacinaApp.type.UserCreateResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.ZoneId;
import java.util.Optional;
import java.util.Date;
import java.time.LocalDate;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public UserCreateResponse criarUsuario(UserCreateRequest request) {
        User usuario = new User();
        usuario.setName(request.getName());
        usuario.setDataNascimento(request.getDataNascimento());
        usuario.setDdd(request.getDdd()); // Já é String
        usuario.setTelefone(request.getTelefone()); // Já é String
        usuario.setCpf(request.getCpf());
        usuario.setEmail(request.getEmail());

        User savedUser = userRepository.save(usuario);

        UserCreateResponse response = new UserCreateResponse();
        response.setIdUser(savedUser.getIdUser()); // Changed from setIdUsuario to setIdUser
        response.setName(savedUser.getName());
        response.setDataNascimento(savedUser.getDataNascimento().toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
        response.setDdd(savedUser.getDdd()); // Já é String
        response.setTelefone(savedUser.getTelefone()); // Já é String
        response.setCpf(savedUser.getCpf());
        response.setEmail(savedUser.getEmail());

        return response;
    }

    public UserCreateResponse buscarUsuarioPorId(Long id) {
        User usuario = userRepository.findById(id).orElse(null);

        if (usuario != null) {
            UserCreateResponse response = new UserCreateResponse();
            response.setIdUser(usuario.getIdUser()); // Changed from setIdUsuario to setIdUser
            response.setName(usuario.getName());

            // Convert java.sql.Date to LocalDate
            if (usuario.getDataNascimento() != null) {
                LocalDate dataNascimento = usuario.getDataNascimento().toInstant()
                            .atZone(ZoneId.systemDefault())
                            .toLocalDate();
                response.setDataNascimento(dataNascimento);
            } else {
                response.setDataNascimento(null); // Ou defina um valor padrão
            }

            response.setCpf(usuario.getCpf());
            response.setEmail(usuario.getEmail());
            response.setDdd(usuario.getDdd());
            response.setTelefone(usuario.getTelefone());

            return response;
        } else {
            return null;
        }
    }
}