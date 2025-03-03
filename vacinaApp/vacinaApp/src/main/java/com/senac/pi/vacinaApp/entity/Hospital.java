package com.senac.pi.vacinaApp.entity;

import java.io.Serial;
import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Hospital")
public class Hospital implements Serializable{
	
	@Serial
    private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idHospital")
	private Integer idHospital;
	
	@Column(name = "nomeHospital", length = 100, nullable = false)
	private String nomeHospital;
	
	@Column(name = "estado", length = 70, nullable = false)
	private String estado;
	
	@Column(name = "país", length = 70, nullable = false)
	private String país;
	
	@Column(name = "endereco", length = 100, nullable = false)
	private String endereco;
	
	@Column(name = "ddd", nullable = false)
	private Integer ddd;
	
	@Column(name = "telefone", nullable = false)
	private Integer telefone;
	
	@ManyToMany(mappedBy = "hospitais")
	private List<Vacina> vacinas;

	public Integer getIdHospital() {
		return idHospital;
	}

	public void setIdHospital(Integer idHospital) {
		this.idHospital = idHospital;
	}

	public String getNomeHospital() {
		return nomeHospital;
	}

	public void setNomeHospital(String nomeHospital) {
		this.nomeHospital = nomeHospital;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getPaís() {
		return país;
	}

	public void setPaís(String país) {
		this.país = país;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public Integer getDdd() {
		return ddd;
	}

	public void setDdd(Integer ddd) {
		this.ddd = ddd;
	}

	public Integer getTelefone() {
		return telefone;
	}

	public void setTelefone(Integer telefone) {
		this.telefone = telefone;
	}

	public List<Vacina> getVacinas() {
		return vacinas;
	}

	public void setVacinas(List<Vacina> vacinas) {
		this.vacinas = vacinas;
	}

	@Override
	public String toString() {
		return "Hospital [idHospital=" + idHospital + ", nomeHospital=" + nomeHospital + ", estado=" + estado
				+ ", país=" + país + ", endereco=" + endereco + ", ddd=" + ddd + ", telefone=" + telefone + ", vacinas="
				+ vacinas + "]";
	}

}
