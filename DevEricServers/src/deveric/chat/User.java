package deveric.chat;

import java.io.DataOutputStream;
import java.net.Socket;
import java.util.HashMap;
import java.util.Iterator;

public class User {
	HashMap<String, DataOutputStream> clientMap = new HashMap<String, DataOutputStream>();
	
	
	public synchronized void addClient(String name, Socket socket){
		try{
			sendMsg(name + " 입장.", "Server");
			clientMap.put(name, new DataOutputStream(socket.getOutputStream()));
			System.out.println("채팅 참여 인원 : " + clientMap.size() );
		}catch(Exception e){}
	}
	
	public synchronized void sendMsg(String msg, String name) throws Exception{
		Iterator it = clientMap.keySet().iterator();
		while(it.hasNext()){
			String clientName = (String)it.next();
			clientMap.get(clientName).writeUTF(name + " : " + msg);
		}
	}
	
	public synchronized void removeClient(String name){
		try{
			clientMap.remove(name);
			sendMsg(name + "님이 퇴장하셨습니다.", "Server");
			System.out.println("채팅 참여 인원 " + clientMap.size());
		}catch(Exception e){
			
		}
		
	}
}
