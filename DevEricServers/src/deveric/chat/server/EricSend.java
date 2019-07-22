package deveric.chat.server;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;

public class EricSend implements Runnable {
	DataOutputStream dOut;
	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	
	public EricSend(DataOutputStream dOut){
		this.dOut = dOut;
	}
	
	
	@Override
	public void run() {
		while(true){
			try {
				String msg = br.readLine();
				dOut.writeUTF(msg);
			} catch (Exception e) {
			}
		}
	}

}
