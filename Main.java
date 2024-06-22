
import java.util.*;

public class Main {
    public static void main(String[] args){
        String m = "the sun rises in the east";
   
        String encrypt = encryptMsg(m);
        
        System.out.println(encrypt);
    }

    public static String encryptMsg(String m) {
        String ans = "";
        m+=" ";
        int len = m.length();
        String temp = "";
        String temp1 = "";
        
        int odd = 1;
        int f = 1;
        int len1 = 0;
        for(int i = 0;i<len;i++){
            if(m.charAt(i)== ' '){
                if(odd == 1){
                    odd = 0;
                    if(f==1){
                        temp1="";
                        f=0;
                         
                    }
                    else {
                        temp1 = " ";
                    }
                    for(int j = len1-1;j>=0;j--){
                        temp1+=temp.charAt(j);
                        
                        
                    }
                }
                else{
                    odd = 1;
                    String vowel = "";
                    temp1 = " ";
                    for(int j = 0;j<len1;j++){
                        if(temp.charAt(j)=='a'||temp.charAt(j)=='e'||temp.charAt(j)=='i'||temp.charAt(j)=='o'||temp.charAt(j)=='u'){
                            vowel+=temp.charAt(j);
                   

                            
                        }
                        else{
                            temp1+=temp.charAt(j);
                        }
                    }
                    temp1+=vowel;
                }
                ans+=temp1;
                temp="";
                len1=0;
            }
            else{
                temp+=m.charAt(i);
                len1++;
            }
        }
        return ans;
    }
}