package dao;

import classes.Cliente;
import static dao.Dao.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClienteDao {

public static Cliente getClienteById(int id){
        Cliente cliente = null;      
    try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from clientes where Id=?");
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            cliente = new Cliente();
            cliente.setId(rs.getInt("id"));
            cliente.setNome(rs.getString("nome"));
            cliente.setCpf(rs.getInt("cpf"));         
            cliente.setEndereco(rs.getString("endereco"));   
            cliente.setTelefone(rs.getInt("telefone"));
            
        }
    }catch(Exception erro){
        System.out.println(erro);
    }      
        return cliente;
    }    

     public static List<Cliente> getCliente(int inicio, int total){
        List<Cliente> list = new ArrayList<Cliente>();    
    try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM clientes ORDER BY id LIMIT " + (inicio - 1) + " ," + total);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            Cliente cliente = new Cliente();
            cliente.setId(rs.getInt("id"));
            cliente.setNome(rs.getString("nome"));
            cliente.setCpf(rs.getInt("cpf"));         
            cliente.setEndereco(rs.getString("endereco"));   
            cliente.setTelefone(rs.getInt("telefone"));
            
            list.add(cliente);
        }
    }catch(Exception erro){
        System.out.println(erro);
    }      
        return list;
    }
    public static int getContagem() {
        int contagem = 0;
        try{
            Connection con = getConnection();
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT count(*) AS contagem FROM clientes");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                contagem = rs.getInt("contagem");
            }   
        }catch(Exception erro){
            System.out.println(erro);
        }
        return contagem;
    }
}