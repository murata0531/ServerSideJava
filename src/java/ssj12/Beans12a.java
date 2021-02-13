
package ssj12;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
/**
 *
 * @author 2180020
 */
public class Beans12a implements Serializable {
    
    private String name;
    private int price;
    private String memo;
    
    
    public Beans12a() {}
    
       public int execute() {
           
           int cnt = 0;
           
            try {
    
            Connection con = null;
            Statement stmt = null;
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            con = DriverManager.getConnection("jdbc:mysql://localhost/javadb?useUnicode=true&characterEncoding=sjis","root","ecc");
            
            stmt = con.createStatement();
            
            cnt = stmt.executeUpdate("insert into goods(name,price,memo) values('" + name + "'," + price + ",'" + memo + "')");
            
            
            con.close();
            
        }catch(Exception e){
            e.printStackTrace();
        }
            
            return cnt;
    }

    
    public void setName(String strName) {
        name = strName;
    }
    
    public void setMemo(String strMemo) {
        memo = strMemo;
    }
    
    public void setPrice(int iPrice) {
        price = iPrice;
    }
}
