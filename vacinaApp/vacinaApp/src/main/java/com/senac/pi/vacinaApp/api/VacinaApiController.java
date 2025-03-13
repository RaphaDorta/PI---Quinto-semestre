package com.senac.pi.vacinaApp.api;

import com.senac.pi.vacinaApp.entity.Vacina;
import com.senac.pi.vacinaApp.service.VacinaService;
import com.senac.pi.vacinaApp.type.VacinaResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/vacinas")
public class VacinaApiController {

    @Autowired
    private VacinaService vacinaService;

    @GetMapping("/por-data-nascimento")
    public ResponseEntity<List<VacinaResponse>> obterVacinasPorDataNascimento(@RequestParam String dataNascimento) {
        LocalDate data = LocalDate.parse(dataNascimento, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        List<Vacina> vacinas = vacinaService.obterVacinasPorDataNascimento(data);

        // Converte Vacina para VacinaResponse
        List<VacinaResponse> responses = vacinas.stream()
                .map(vacina -> new VacinaResponse(
                        vacina.getIdVacina(),
                        vacina.getNomeVacina(),
                        vacina.getDosesTomar(),
                        vacina.getLoteVacina(),
                        vacina.getPaís(),
                        vacina.getInformacoesVacina(),
                        vacina.getEfeitosColaterais(),
                        vacina.getIdadeMinima(),
                        vacina.getIdadeMaxima()))
                .collect(Collectors.toList());

        return ResponseEntity.ok(responses);
    }
}