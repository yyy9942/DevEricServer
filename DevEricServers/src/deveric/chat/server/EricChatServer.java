package deveric.chat.server;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class EricChatServer implements Runnable{
	Map<String, DataOutputStream> users = new HashMap<String, DataOutputStream>();
	List<Thread> userList = new ArrayList<Thread>();
	int serverSocket;
	
	@Override
	public void run() {
		startServer();
	}
	
	public EricChatServer(int serverSocket) {
		this.serverSocket = serverSocket;
	}
	
	public void startServer(){
		Socket socket = null;
		ServerSocket serverSocket = null;
		
		try {
			serverSocket = new ServerSocket(this.serverSocket);
			while(true){
				socket = serverSocket.accept();
				Thread th = new Thread(new EricChatReceiver(socket, this));
				th.start();
				userList.add(th);
			}
			
			
		} catch (Exception e) {
		}
		
		
	}
	
	public synchronized void addUser(String name, Socket socket){
		try {
			users.put(name, new DataOutputStream(socket.getOutputStream()));
			sendMsg(userList.size() + "명째 입장한 " +name + "님이 입장하셨습니다.", "Server");
		} catch (IOException e) {
			// 실패
			System.out.println("유저 추가 실패");
		}
	}
	
	public synchronized void sendMsg(String msg, String name) throws IOException{
		Iterator<String> it = users.keySet().iterator();
		while(it.hasNext()){
			users.get(it.next()).writeUTF(name + " : " +  msg);
		}
	}
	
	public synchronized void removeUser(String name){
		users.remove(name);
	}
	
	public static void main(String[] args) {
		EricChatServer server = new EricChatServer(1227);
		server.startServer();
	}
}
