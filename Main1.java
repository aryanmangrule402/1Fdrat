
import java.util.*;
class Dictionary{
    public static void main(String[] args){
        Scanner scr = new Scanner(System.in);

        HashMap<String,String> map = new HashMap<>();

        int len = scr.nextInt();

        for(int i=0;i<len;i++){
            String k = scr.next();
            String v = scr.next();
            
            map.put(k,v);
        }
        

        int[] ans = findCorrect(map);
    }

    public static int[] findCorrect(HashMap<String,String> m){
        int[] ans = new int[3];
        int c=0;
        int ac=0,w=0;
        m.forEach((k,v) -> {
            int err =0;
            int len1 = k.length();
            int len2 = v.length();
            int c1 = 0;
            int ac1=0;
            int w1=0;
            if(len1!=len2){ 
                err = len2-len1;
            }
            else{
                for(int i=0;i<len1;i++){
                    if(k.charAt(i) != v.charAt(i)){
                        err++;
                    }
                }
                if(err==0){
                    c1=1;
                }
                else if(err<=2){
                    ac1=1;
                }
                else{
                    w1=1;
                }

            }


            
        });

        return ans;
    }
}