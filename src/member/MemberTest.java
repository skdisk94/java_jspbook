package member;

import java.util.List;

public class MemberTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MemberDAO mDao = new MemberDAO();
		MemberDTO mDto = new MemberDTO();
		
		//mDao.createTableM(mDto);		//���̺� ����
		
		mDto = new MemberDTO("123456","������",666666,"���ѹα�");
		//mDao.singUpM(mDto);			//ȸ������
		
		mDto.setId(100014);
		//mDto.setPassword("654321");
		//mDao.upDateM(mDto); 		//����
		
		//mDao.deleteM(mDto); 		//����
		
		List<MemberDTO> memberListName = mDao.select("�浿");
		for(MemberDTO MDTOName : memberListName)
			System.out.println(MDTOName.toString());
		System.out.println();
		
		List<MemberDTO> memberList = mDao.lookUpM();
			for(MemberDTO MDTO : memberList)
				System.out.println(MDTO.toString());
	}
}
