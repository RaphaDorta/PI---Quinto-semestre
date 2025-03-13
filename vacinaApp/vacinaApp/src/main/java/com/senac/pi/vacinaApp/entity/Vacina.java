package com.senac.pi.vacinaApp.entity;

import java.io.Serial;
import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "vacina") // Nome da tabela no banco de dados
public class Vacina implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idVacina") // Nome da coluna no banco de dados
    private Integer idVacina;

    @Column(name = "nome_vacina", length = 75, nullable = false) // Nome da coluna no banco de dados
    private String nomeVacina;

    @Column(name = "doses_tomar", nullable = false) // Nome da coluna no banco de dados
    private Integer dosesTomar;

    @Column(name = "lote_vacina", length = 50, nullable = false) // Nome da coluna no banco de dados
    private String loteVacina;

    @Column(name = "país", length = 100, nullable = false) // Nome da coluna no banco de dados
    private String país;

    @Column(name = "informacoes_vacina", length = 1000, nullable = false) // Nome da coluna no banco de dados
    private String informacoesVacina;

    @Column(name = "efeitos_colaterais", length = 1000) // Nome da coluna no banco de dados
    private String efeitosColaterais;

    @Column(name = "idade_minima", nullable = false) // Nome da coluna no banco de dados
    private Integer idadeMinima;

    @Column(name = "idade_maxima", nullable = false) // Nome da coluna no banco de dados
    private Integer idadeMaxima;

    @ManyToMany
    @JoinTable(
        name = "vacina_hospital", // Nome da tabela de junção no banco de dados
        joinColumns = @JoinColumn(name = "idVacina"), // Coluna da tabela Vacina
        inverseJoinColumns = @JoinColumn(name = "idHospital") // Coluna da tabela Hospital
    )
    private List<Hospital> hospitais;

    // Getters e Setters
    public Integer getIdVacina() {
        return idVacina;
    }

    public void setIdVacina(Integer idVacina) {
        this.idVacina = idVacina;
    }

    public String getNomeVacina() {
        return nomeVacina;
    }

    public void setNomeVacina(String nomeVacina) {
        this.nomeVacina = nomeVacina;
    }

    public Integer getDosesTomar() {
        return dosesTomar;
    }

    public void setDosesTomar(Integer dosesTomar) {
        this.dosesTomar = dosesTomar;
    }

    public String getLoteVacina() {
        return loteVacina;
    }

    public void setLoteVacina(String loteVacina) {
        this.loteVacina = loteVacina;
    }

    public String getPaís() {
        return país;
    }

    public void setPaís(String país) {
        this.país = país;
    }

    public String getInformacoesVacina() {
        return informacoesVacina;
    }

    public void setInformacoesVacina(String informacoesVacina) {
        this.informacoesVacina = informacoesVacina;
    }

    public String getEfeitosColaterais() {
        return efeitosColaterais;
    }

    public void setEfeitosColaterais(String efeitosColaterais) {
        this.efeitosColaterais = efeitosColaterais;
    }

    public Integer getIdadeMinima() {
        return idadeMinima;
    }

    public void setIdadeMinima(Integer idadeMinima) {
        this.idadeMinima = idadeMinima;
    }

    public Integer getIdadeMaxima() {
        return idadeMaxima;
    }

    public void setIdadeMaxima(Integer idadeMaxima) {
        this.idadeMaxima = idadeMaxima;
    }

    public List<Hospital> getHospitais() {
        return hospitais;
    }

    public void setHospitais(List<Hospital> hospitais) {
        this.hospitais = hospitais;
    }

    @Override
    public String toString() {
        return "Vacina [idVacina=" + idVacina + ", nomeVacina=" + nomeVacina + ", dosesTomar=" + dosesTomar
                + ", loteVacina=" + loteVacina + ", país=" + país + ", informacoesVacina=" + informacoesVacina
                + ", efeitosColaterais=" + efeitosColaterais + ", idadeMinima=" + idadeMinima + ", idadeMaxima="
                + idadeMaxima + ", hospitais=" + hospitais + "]";
    }
}