package br.com.fatecpg.poo4;

import java.util.ArrayList;

/**
 *
 * @author PauloHGama
 */
public class ArraysClienteFornecedores {
    public static ArrayList<Clientes> clienteslist = new ArrayList();
    public static ArrayList<Fornecedores> fornecedoresList = new ArrayList();
    
    public static String nome = "add";
    public static String valor = "Adicionar";
    public static String requerido = "required";

    public static ArrayList<Clientes> getClienteslist() {
        return clienteslist;
    }
    
    public static ArrayList<Fornecedores> getFornecedoreslist() {
        return fornecedoresList;
    }
}
