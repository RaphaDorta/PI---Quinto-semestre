package com.senac.pi.vacinaApp.service;

import com.senac.pi.vacinaApp.entity.Vacina; // Importa a entidade Vacina
import com.senac.pi.vacinaApp.repository.VacinaRepository; // Importa o repositório VacinaRepository
import com.senac.pi.vacinaApp.entity.User; // Importa a entidade User
import org.springframework.beans.factory.annotation.Autowired; // Importa a anotação para injeção de dependência
import org.springframework.stereotype.Service; // Importa a anotação para definir um serviço

import java.time.LocalDate; // Importa a classe LocalDate para manipulação de datas
import java.time.Period; // Importa a classe Period para calcular a diferença entre datas
import java.util.ArrayList; // Importa a classe ArrayList para listas
import java.util.List; // Importa a classe List para listas

@Service // Indica que essa classe é um serviço Spring
public class VacinaService {

    @Autowired // Injeta automaticamente a instância do repositório
    private VacinaRepository vacinaRepository; 

    // Método para calcular a idade e retornar vacinas
    public List<Vacina> obterVacinasPorDataNascimento(LocalDate dataNascimento) {
        int idade = calcularIdade(dataNascimento); // Calcula a idade
        List<Vacina> todasVacinas = vacinaRepository.findAll(); // Obtém todas as vacinas
        List<Vacina> vacinasDevidas = new ArrayList<>(); // Lista para vacinas devidas
        List<Vacina> proximasVacinas = new ArrayList<>(); // Lista para próximas vacinas

        // Filtra as vacinas devidas com base na idade
        for (Vacina vacina : todasVacinas) {
            if (idade >= vacina.getIdadeMinima()) { // Supondo que a vacina tem um método getIdadeMinima()
                vacinasDevidas.add(vacina);
            }
            if (idade < vacina.getIdadeMaxima()) { // Supondo que a vacina tem um método getIdadeMaxima()
                proximasVacinas.add(vacina);
            }
        }

        // Aqui você pode adicionar lógica para definir as vacinas que devem ser tomadas no próximo ano        

        return vacinasDevidas; // Retorna as vacinas devidas
    }

    // Método para calcular a idade com base na data de nascimento
    private int calcularIdade(LocalDate dataNascimento) {
        LocalDate hoje = LocalDate.now(); // Obtém a data atual
        return Period.between(dataNascimento, hoje).getYears(); // Calcula a idade
    }
}
