package com.senac.pi.vacinaApp.service; // Pacote onde o serviço está localizado

import com.senac.pi.vacinaApp.entity.User; // Importa a entidade User
import com.senac.pi.vacinaApp.repository.UserRepository; // Importa o repositório UserRepository
import com.senac.pi.vacinaApp.type.UserCreateRequest; // Importa o tipo UserCreateRequest
import com.senac.pi.vacinaApp.type.UserCreateResponse; // Importa o tipo UserCreateResponse
import org.springframework.beans.factory.annotation.Autowired; // Importa a anotação para injeção de dependência
import org.springframework.stereotype.Service; // Importa a anotação para definir um serviço

@Service // Indica que essa classe é um serviço Spring
public class UserService {

    @Autowired // Injeta automaticamente a instância do repositório
    private UserRepository userRepository; 

    // Método para criar um novo usuário
    public UserCreateResponse criarUsuario(UserCreateRequest request) {
        User usuario = new User(); // Cria uma nova instância de User
        usuario.setName(request.getName()); // Define o nome do usuário
        usuario.setDataNascimento(request.getDataNascimento()); // Define a data de nascimento
        usuario.setCpf(request.getCpf()); // Define o CPF
        usuario.setEmail(request.getEmail()); // Define o email
        usuario.setDdd(request.getDdd()); // Define o DDD
        usuario.setTelefone(request.getTelefone()); // Define o telefone
        
        User savedUser = userRepository.save(usuario); // Salva o usuário no banco de dados
        
        UserCreateResponse response = new UserCreateResponse(); // Cria uma nova resposta
        response.setIdUsuario(savedUser.getIdUsuario()); // Define o ID do usuário salvo
        response.setName(savedUser.getName()); // Define o nome na resposta
        response.setDataNascimento(savedUser.getDataNascimento().toInstant().atZone(ZoneId.systemDefault()).toLocalDate()); // Converte e define a data de nascimento
        response.setDdd(savedUser.getDdd()); // Define o DDD na resposta
        response.setTelefone(savedUser.getTelefone()); // Define o telefone na resposta
        response.setCpf(savedUser.getCpf()); // Define o CPF na resposta
        response.setEmail(savedUser.getEmail()); // Define o email na resposta

        return response; // Retorna a resposta do usuário criado
    }
} 