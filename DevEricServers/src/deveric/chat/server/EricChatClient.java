package deveric.chat.server;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.Socket;

public class EricChatClient {
	public static void main(String[] args) {
		Socket socket = null;
		DataInputStream dIn = null;
		BufferedReader br = null;
		DataOutputStream dOut = null;
		try {
			socket = new Socket("localhost", 1227);
			dIn = new DataInputStream(socket.getInputStream());
			br = new BufferedReader(new InputStreamReader(System.in));
			dOut = new DataOutputStream(socket.getOutputStream());
			
			System.out.print("닉네임 : ");
			String data = br.readLine();
			
			dOut.writeUTF(data);
			
			Thread th = new Thread(new EricSend(dOut));
			th.start();
			
			
		} catch (Exception e) {
		}
		
		try {
			while(true){
				String str = dIn.readUTF();
				System.out.println(str);
			}
		} catch (Exception e) {
		}
		
	}
}
