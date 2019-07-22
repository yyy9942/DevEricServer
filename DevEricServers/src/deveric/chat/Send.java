package deveric.chat;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;

public class Send implements Runnable {
	DataOutputStream dOut;
	BufferedReader bufferdReader = new BufferedReader(new InputStreamReader(System.in));
	
	public Send(DataOutputStream dOut){
		this.dOut = dOut;
	}
	
	@Override
	public void run() {
		while(true){
			try{
				String msg = bufferdReader.readLine(); // 키보드로 부터 입력을 받음
				dOut.writeUTF(msg);
			}catch(Exception e){}
		}
	}

}
