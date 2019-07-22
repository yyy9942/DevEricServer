package deveric.chat;

import java.net.ServerSocket;
import java.net.Socket;


public class ChatServer {
	public static void main(String[] args) {
		// 접속한 Client와 통신하기 위한 Socket
		Socket socket = null;
		// 채팅방에 접속해있는 Client 관리 객체
		User user = new User();
		// Client 접속을 받기 위한 ServerSocket
		ServerSocket serverSocket = null;
		
		int count = 0;
		Thread thread[] = new Thread[10];
		
		try{
			serverSocket = new ServerSocket(9999);
			// Server의 메인 쓰레드는 계속해서 사용자의 접속을 받음
			while(true){
				socket = serverSocket.accept();
				
				thread[count] = new Thread(new Receiver(user, socket));
				thread[count].start();
				count++;
			}
		}catch(Exception e){};
		
	}
}
