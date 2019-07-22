package deveric.chat.server;

import java.io.DataInputStream;
import java.io.IOException;
import java.net.Socket;

public class EricChatReceiver implements Runnable{
	Socket socket;
	DataInputStream dIn;
	String name;
	EricChatServer server;
	
	public EricChatReceiver(Socket socket, EricChatServer server) throws IOException{
		dIn = new DataInputStream(socket.getInputStream());
		this.name = dIn.readUTF();
		this.server = server;
		server.addUser(name, socket);
	}
	
	@Override
	public void run() {
		try {
			while(true){
				String msg = dIn.readUTF();
				server.sendMsg(msg, name);
			}
		} catch (Exception e) {
			server.removeUser(name);
		}
	};
}
