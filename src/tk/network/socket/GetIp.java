package tk.network.socket;
import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * 解析主机名获取ip地址
 */
public class GetIp {
	
	
	public static String hostGetIp (String url) {
		
		InetAddress iAddress;
        String ip = null;
        try {
            iAddress = InetAddress.getByName(url);
             ip = iAddress.getHostAddress();
        }
        catch (UnknownHostException e) {
        //e.printStackTrace();
        }
        return ip;
	}
	
	
	
    public static void main(String[] args) {
            	
    	String url1 = "8siss.tk";
        String url2 = "8sis.kmdns.net";
        String ip1;String ip2;
        ip1 = hostGetIp(url1);
        ip2 = hostGetIp(url2);
        if(ip1!=null){
        	System.out.println(ip1);
        }else{
        	System.out.println(ip2);
        }
        
        
    }
}