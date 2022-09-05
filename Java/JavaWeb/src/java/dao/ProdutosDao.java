
package dao;

import classes.Produtos;
import static dao.Dao.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ProdutosDao {
   
     public static Produtos getProdutosById(int id){
        Produtos produtos = null;      
    try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from produtos where Id=?");
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            produtos = new Produtos();
            produtos.setId(rs.getInt("id"));
            produtos.setNome(rs.getString("nome"));
            produtos.setQuantidade(rs.getInt("quantidade"));         
            produtos.setPreco(rs.getInt("preco"));   
            produtos.setMarca(rs.getString("marca"));            
            
        }
    }catch(Exception erro){
        System.out.println(erro);
    }      
        return produtos;
    }

    public static int editarProdutos(Produtos produtos){
       int status = 0;  
   try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE produtos SET Nome=?,Quantidade=?, Preco=?, Marca=? WHERE id=?");
        ps.setString(1, produtos.getNome());
        ps.setInt(2, produtos.getQuantidade());
        ps.setInt(3, produtos.getPreco());
        ps.setString(4, produtos.getMarca());
        ps.setInt(5, produtos.getId());         
        status = ps.executeUpdate();
    }catch(Exception erro){
        System.out.println(erro);
    }      
       return status;
   }
     public static List<Produtos> getProdutos(int inicio, int total){
        List<Produtos> list = new ArrayList<Produtos>();    
    try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM produtos ORDER BY id LIMIT " + (inicio - 1) + " ," + total);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            Produtos produtos = new Produtos();
            produtos.setId(rs.getInt("id"));
            produtos.setNome(rs.getString("nome"));
            produtos.setQuantidade(rs.getInt("quantidade"));         
            produtos.setPreco(rs.getInt("preco"));   
            produtos.setMarca(rs.getString("marca"));
            
            list.add(produtos);
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
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT count(*) AS contagem FROM produtos");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                contagem = rs.getInt("contagem");
            }   
        }catch(Exception erro){
            System.out.println(erro);
        }
        return contagem;
    }

public static int excluirProdutos(Produtos produtos){
       int status = 0;  
        try{
             Connection con = getConnection();
             PreparedStatement ps = (PreparedStatement) con.prepareStatement("DELETE FROM produtos WHERE id=?");
             ps.setInt(1, produtos.getId());         
             status = ps.executeUpdate();
         }catch(Exception erro){
             System.out.println(erro);
         }      
            return status;
   }
    public static int cadastrarProdutos(Produtos produtos){
       int status = 0;  
   try{
        Connection con = getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO PRODUTOS(NOME,QUANTIDADE,PRECO,MARCA) VALUES(?,?,?,?)");
        ps.setString(1, produtos.getNome());
        ps.setInt(2, produtos.getQuantidade());
        ps.setInt(3, produtos.getPreco());        
        ps.setString(4, produtos.getMarca());          
        
        status = ps.executeUpdate();
    }catch(Exception erro){
        System.out.println(erro);
    }      
       return status;
   }
       
}