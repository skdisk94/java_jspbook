package member;

import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

public class MemberApplecation {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MemberDAO mDao = new MemberDAO();
		MemberDTO mDto = new MemberDTO();
		Scanner scanner = new Scanner(System.in);
		String idStr = null;
		int id = 0;
		String password = null;
		String name = null;
		int zipCode = 0;
		String address = null;
		String[] strArrary;

		String selectNo = null;
		boolean run = true;
		// mDao.createTable(mDto); //테이블 생성

		while (run) {
			System.out.println("-----------------------------------------------------");
			System.out.println("1-가입 | 2-조회 | 3-변경 | 4-삭제 | 5-검색 | 6-종료");
			System.out.println("-----------------------------------------------------");
			System.out.print("선택>");

			selectNo = scanner.nextLine();
			boolean ok = false;
			String flush = null;

			switch (selectNo) {
			case "1":
				strArrary =input().split(",");
				password=strArrary[0];
				name=strArrary[1];
				zipCode=Integer.parseInt(strArrary[2]);
				address=strArrary[3];
				
				mDto = new MemberDTO(password, name, zipCode, address);
				mDao.singUpM(mDto);
				break;

			case "2":
				List<MemberDTO> memberList = mDao.lookUpM();
				for (MemberDTO MDTO : memberList)
					System.out.println(MDTO.toString());
				break;

			case "3":
				strArrary =input().split(",");
				password=strArrary[0];
				name=strArrary[1];
				zipCode=Integer.parseInt(strArrary[2]);
				address=strArrary[3];
				
				mDto.setPassword(password);
				mDto.setName(name);
				mDto.setZipCode(zipCode);
				mDto.setAddress(address);

				mDao.upDateM(mDto);
				mDto = mDao.selectId(id);
				System.out.println(mDto);
				break;

			case "4":
				do {
					System.out.println("삭제할 ID를 입력하세요");
					idStr = scanner.nextLine();
				} while (!isNaN(idStr));
				id = Integer.parseInt(idStr);
				mDto.setId(id);

				mDao.deleteM(mDto);
				break;

			case "5":
				System.out.print("검색할 이름>");
				name = scanner.nextLine();
				List<MemberDTO> memberListName = mDao.select(name);
				for (MemberDTO MDTO : memberListName)
					System.out.println(MDTO.toString());
				break;
			case "6":
				System.out.println("프로그램종료");
				run = false;
				break;
			default:
				System.out.println("다시입력하세요(1~6사이의 숫자를 입력하세요)");
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

	static String checkLength(String str, int num) {
		Scanner scanner = new Scanner(System.in);
		while (true) {
			if (str.length() <= num)
				return str;
			else {
				System.out.println(num + "자 이하로 다시 입력하세요");
				str = scanner.nextLine();
			}
		}
	}
	
	
	static String input() {
		Scanner scanner = new Scanner(System.in);
		String password = null;
		String name = null;
		String zipCodeStr = null;
		int zipCode = 0;
		String address = null;
		
		System.out.print("패스워드>");
		password = scanner.nextLine();
		password = checkLength(password,10);
		
		System.out.print("이름>");
		name = scanner.nextLine();
		name = checkLength(name,10);
		
		while(!isNaN(zipCodeStr)) {
			System.out.print("우편번호>");
			zipCodeStr = scanner.nextLine();
			zipCodeStr=checkLength(zipCodeStr,6);
		}
		
		System.out.print("주소>");
		address = scanner.nextLine();
		address = checkLength(address, 50);
		
		return password+","+name+","+zipCodeStr+","+address;
	}
}
