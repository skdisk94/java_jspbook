package member;

import java.util.List;

public class MemberTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MemberDAO mDao = new MemberDAO();
		MemberDTO mDto = new MemberDTO();
		
		//mDao.createTableM(mDto);		//테이블 생성
		
		mDto = new MemberDTO("123456","보라돌이",666666,"대한민국");
		//mDao.singUpM(mDto);			//회원가입
		
		mDto.setId(100014);
		//mDto.setPassword("654321");
		//mDao.upDateM(mDto); 		//변경
		
		//mDao.deleteM(mDto); 		//삭제
		
		List<MemberDTO> memberListName = mDao.select("길동");
		for(MemberDTO MDTOName : memberListName)
			System.out.println(MDTOName.toString());
		System.out.println();
		
		List<MemberDTO> memberList = mDao.lookUpM();
			for(MemberDTO MDTO : memberList)
				System.out.println(MDTO.toString());
	}
}
