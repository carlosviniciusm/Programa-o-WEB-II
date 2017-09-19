/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nadautil.dto;

/**
 *
 * @author Vinicius
 */
public class turmaDTO {
    private int id;
    private String nome;
    private int prof_id;

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public int getProf_id() {
        return prof_id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setProf_id(int prof_id) {
        this.prof_id = prof_id;
    }
    
}
