package com.senac.pi.vacinaApp.entity;

import java.io.Serial;
import java.io.Serializable;
import java.util.List;

import org.hibernate.annotations.ManyToAny;

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
@Table(name = "Vacina")
public class Vacina implements Serializable{
	
	@Serial
    private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idVacina")
	private Integer idVacina;
	
	@Column(name = "nomeVacina", length = 75, nullable = false)
	private String nomeVacina;
	
	@Column(name = "dosesTomar", nullable = false)
	private Integer dosesTomar;
	
	@Column(name = "loteVacina", length = 50, nullable = false)
	private String loteVacina;
	
	@Column(name = "país", length = 100, nullable = false)
	private String país;
	
	@Column(name = "informacoesVacina", length = 1000, nullable = false)
	private String informacoesVacina;
	
	@Column(name = "efeitosColaterais", length = 1000)
	private String efeitosColaterais;
	
	@ManyToMany
	@JoinTable(
			name = "vacinaHospital",
			joinColumns = @JoinColumn(name = "idVacina"),
			inverseJoinColumns = @JoinColumn(name = "idHospital")
			)
	private List<Hospital> hospitais;
	

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
				+ ", efeitosColaterais=" + efeitosColaterais + ", hospitais=" + hospitais + "]";
	}
}
