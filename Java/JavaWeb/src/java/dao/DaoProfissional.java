package dao;

import classes.Profissional;
import java.sql.Connection;
import dao.Dao;
import static dao.Dao.getConnection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DaoProfissional {
   
     public static Profissional getProfissionalById(int id){
        Profissional profissional = null;      
    try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from profissionais where Id=?");
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            profissional = new Profissional();
            profissional.setId(rs.getInt("id"));
            profissional.setNome(rs.getString("nome"));
            profissional.setEmail(rs.getString("email"));         
            profissional.setSenha(rs.getString("senha"));   
            profissional.setFuncao(rs.getString("funcao"));
            profissional.setAcesso(rs.getString("acesso"));
            
        }
    }catch(Exception erro){
        System.out.println(erro);
    }      
        return profissional;
    }

    public static int editarProfissional(Profissional profissional){
       int status = 0;  
   try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE profissionais SET Nome=?, Email=?, Acesso=?, Funcao=? WHERE id=?");
        ps.setString(1, profissional.getNome());
        ps.setString(2, profissional.getEmail());
        ps.setString(3, profissional.getAcesso());
        ps.setString(4, profissional.getFuncao());
        ps.setInt(5, profissional.getId());         
        status = ps.executeUpdate();
    }catch(Exception erro){
        System.out.println(erro);
    }      
       return status;
   }
     public static List<Profissional> getProfissionais(int inicio, int total){
        List<Profissional> list = new ArrayList<Profissional>();    
    try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM profissionais ORDER BY id LIMIT " + (inicio - 1) + " ," + total);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            Profissional profissional = new Profissional();
            profissional.setId(rs.getInt("id"));
            profissional.setNome(rs.getString("nome"));
            profissional.setEmail(rs.getString("email"));         
            profissional.setSenha(rs.getString("senha"));   
            profissional.setFuncao(rs.getString("funcao"));
            profissional.setAcesso(rs.getString("acesso"));
            
            list.add(profissional);
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
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT count(*) AS contagem FROM profissionais");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                contagem = rs.getInt("contagem");
            }   
        }catch(Exception erro){
            System.out.println(erro);
        }
        return contagem;
    }

public static int excluirProfissional(Profissional profissional){
       int status = 0;  
        try{
             Connection con = getConnection();
             PreparedStatement ps = (PreparedStatement) con.prepareStatement("DELETE FROM profissionais WHERE id=?");
             ps.setInt(1, profissional.getId());         
             status = ps.executeUpdate();
         }catch(Exception erro){
             System.out.println(erro);
         }      
            return status;
   }
    public static int cadastrarProfissional(Profissional profissional){
       int status = 0;  
   try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO PROFISSIONAIS(NOME,EMAIL,SENHA,FUNCAO,ACESSO) VALUES(?,?,?,?,?)");
        ps.setString(1, profissional.getNome());
        ps.setString(2, profissional.getEmail());
        ps.setString(3, profissional.getSenha());        
        ps.setString(4, profissional.getFuncao());
        ps.setString(5, profissional.getAcesso());          
        
        status = ps.executeUpdate();
    }catch(Exception erro){
        System.out.println(erro);
    }      
       return status;
   }
       
}