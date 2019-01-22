package member;

import java.util.Scanner;

public class LoginApplication {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MemberDAO mDao = new MemberDAO();
		MemberDTO mDto = new MemberDTO();
		String idStr=null;
		int id;
		String password=null;
		int result=0;
		boolean run = true;
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Login");
		
		while(run) {
			System.out.print("Id> ");
			idStr= scanner.nextLine();
			System.out.print("Password> ");
			password=scanner.nextLine();
			if(isNaN(idStr)) {
				id=Integer.parseInt(idStr);
				result=mDao.login(id, password);
			}
			else
				result=2;
			
			switch(result) {
				case 1:
					System.out.println("CORRECT_ID_PASSWORD");
					run=false;
					break;
				case 2:
					System.out.println("ID_DOSE_NOT_EXIST");
					break;
				case 3:
					System.out.println("WRONG_INPUT_PASSWORD");
					break;
				case -1:
					System.out.println("DBERROR");
					break;
			}
		}
	}
	
	static boolean isNaN(String str) {
		try {
			int code = Integer.parseInt(str);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
