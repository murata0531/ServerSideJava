
package ssj13;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.Serializable;
import java.util.StringTokenizer;

public class AuthBean implements Serializable {
    
    boolean result = false;
    
    public AuthBean(){}
    
    public void check(String user, String pass) throws IOException{
        try {
            
            FileReader fr = new FileReader("C:\\workspace\\user.dat");
            
            BufferedReader br = new BufferedReader(fr);
            StringTokenizer tkn;
            
            while(br.ready()){
                
                tkn = new StringTokenizer(br.readLine(), ",");
                
                while(tkn.hasMoreTokens()){
                    if(tkn.nextToken().equals(user) && tkn.nextToken().equals(pass)){
                        result = true;
                    }
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public boolean getResult(){
        return result;
    }
}
