package com.senac.pi.vacinaApp.type;

public class VacinaResponse {
    private Integer idVacina;
    private String nomeVacina;
    private Integer dosesTomar;
    private String loteVacina;
    private String pais;
    private String informacoesVacina;
    private String efeitosColaterais;
    private Integer idadeMinima;
    private Integer idadeMaxima;

    // Construtor vazio necessário para permitir criação sem argumentos
    public VacinaResponse() {}

    // Construtor com parâmetros
    public VacinaResponse(Integer idVacina, String nomeVacina, Integer dosesTomar, String loteVacina, String pais, String informacoesVacina, String efeitosColaterais, Integer idadeMinima, Integer idadeMaxima) {
        this.idVacina = idVacina;
        this.nomeVacina = nomeVacina;
        this.dosesTomar = dosesTomar;
        this.loteVacina = loteVacina;
        this.pais = pais;
        this.informacoesVacina = informacoesVacina;
        this.efeitosColaterais = efeitosColaterais;
        this.idadeMinima = idadeMinima;
        this.idadeMaxima = idadeMaxima;
    }

    // Métodos setters corrigidos
    public void setNome(String nomeVacina) { this.nomeVacina = nomeVacina; }
    public void setDescricao(String informacoesVacina) { this.informacoesVacina = informacoesVacina; }
    public void setDosesNecessarias(Integer dosesTomar) { this.dosesTomar = dosesTomar; }

    // Getters (caso necessário)
    public String getNomeVacina() { return nomeVacina; }
    public String getInformacoesVacina() { return informacoesVacina; }
    public Integer getDosesTomar() { return dosesTomar; }
}
