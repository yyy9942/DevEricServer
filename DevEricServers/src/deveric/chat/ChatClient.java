package deveric.chat;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.Socket;

public class ChatClient {
	public static void main(String[] args) {
		// 서버와 통신하기 위한 소캣
		Socket socket = null;
		// Server로 부터 데이터를 읽어들이기 위한 입력 스트림
		DataInputStream dIn = null;
		// 키보드로부터 읽어들이기 위한 입력 스트림
		BufferedReader bufferedReader = null;

		DataOutputStream dOut = null;
		try {
			socket = new Socket("localhost", 9999); // 서버로 접속
			dIn = new DataInputStream(socket.getInputStream());
			bufferedReader = new BufferedReader(new InputStreamReader(System.in));
			dOut = new DataOutputStream(socket.getOutputStream());
			
			// 채팅에 사용할 닉네임을 입력 받음
			System.out.print("닉네임을 입력해주세요 : ");
			String data = bufferedReader.readLine();
			
			// 서버로 닉네임을 전송
			dOut.writeUTF(data);
			
			// 사용자가 채팅 내용을 입력 및 서버로 전송하기 위한 쓰레드 생성 및 시작
			Thread th = new Thread(new Send(dOut));
			th.start();
			
		} catch (Exception e) {
		}
		try{
			// 클라이언트의 메인 쓰레드는 서버로부터 데이터 읽어 들이는 것만 반복한다.
			while(true){
				String str2 = dIn.readUTF();
				System.out.println(str2);
			}
		}catch(Exception e){
			
		}
	}
}
