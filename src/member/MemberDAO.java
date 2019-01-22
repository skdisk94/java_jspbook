package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	public static final int ID_PASSMORD_MATCH=1;
	public static final int ID_DOSE_NOT_EXIST=2;
	public static final int PSSWORD_IS_WRONG=3;
	public static final int DATABASE_ERROR=-1;
	Connection conn = null;
	
	public MemberDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/world?verifyServerCertificate=false&useSSL=false", "java", "java");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void createTableM(MemberDTO MDTO) {
		String query="create table Member(" + 
				"	id int(6) unsigned not null auto_increment," + 
				"	password varchar(10) not null," + 
				"	name varchar(10) not null," + 
				"	zipCode int(6) unsigned not null default 0," + 
				"	address varchar(50)," + 
				"	primary key(id) )" + 
				"	auto_increment = 100001 charset=utf8;";
		PreparedStatement pStmt=null;
		
		try {
			pStmt = conn.prepareStatement(query);
			pStmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pStmt != null && !pStmt.isClosed())
					pStmt.close();
			} catch (Exception se1) {
				se1.printStackTrace();
			}
		}
	}
	public MemberDTO selectId(int Id) {
		String query = "select * from member where id=?;";
		PreparedStatement pStmt = null;
		MemberDTO MDTO = new MemberDTO();

		try {
			pStmt = conn.prepareStatement(query);
			pStmt.setInt(1, Id);
			ResultSet rs = pStmt.executeQuery();
			while (rs.next()) {
				MDTO.setId(rs.getInt(1));
				MDTO.setPassword(rs.getString(2));
				MDTO.setName(rs.getString(3));
				MDTO.setZipCode(rs.getInt(4));
				MDTO.setAddress(rs.getString(5));
			}
			rs.close();
			return MDTO;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pStmt != null && !pStmt.isClosed())
					pStmt.close();
			} catch (Exception se1) {
				se1.printStackTrace();
			}
		}
		return null;
	}
	
	public List<MemberDTO> select(String name) {
		String query = "select * from member where name=?;";
		PreparedStatement pStmt = null;
		List<MemberDTO> memberList = new ArrayList<MemberDTO>();

		try {
			pStmt = conn.prepareStatement(query);
			pStmt.setString(1, name);
			ResultSet rs = pStmt.executeQuery();
			
			while (rs.next()) {
				MemberDTO MDTO = new MemberDTO();
				MDTO.setId(rs.getInt(1));
				MDTO.setPassword(rs.getString(2));
				MDTO.setName(rs.getString(3));
				MDTO.setZipCode(rs.getInt(4));
				MDTO.setAddress(rs.getString(5));
				
				memberList.add(MDTO);
			}
			rs.close();
			return memberList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pStmt != null && !pStmt.isClosed())
					pStmt.close();
			} catch (Exception se1) {
				se1.printStackTrace();
			}
		}
		return null;
	}
	
	public List<MemberDTO> lookUpM() {
		String query = "select * from member order by id desc;";
		PreparedStatement pStmt = null;
		List<MemberDTO> memberList = new ArrayList<MemberDTO>();
		try {
			pStmt = conn.prepareStatement(query);
			ResultSet rs = pStmt.executeQuery();
			while (rs.next()) {
				int id= rs.getInt(1);
				String password = rs.getString(2);
				String name = rs.getString(3);
				int zipCode = rs.getInt(4);
				String address = rs.getString(5);
				
				MemberDTO MDTO = new MemberDTO(id, password, name, zipCode, address);
				memberList.add(MDTO);
			}
			rs.close();
			return memberList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pStmt != null && !pStmt.isClosed())
					pStmt.close();
			} catch (Exception se1) {
				se1.printStackTrace();
			}
		}		
		return null;
	}
	
	public void singUpM(MemberDTO MDTO) {
		String query = "insert into member (password, name, zipCode, address) values (?,?,?,?);";
		PreparedStatement pStmt = null;
		try {
			pStmt = conn.prepareStatement(query);
			pStmt.setString(1, MDTO.getPassword());
			pStmt.setString(2, MDTO.getName());
			pStmt.setInt(3, MDTO.getZipCode());
			pStmt.setString(4, MDTO.getAddress());
			pStmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pStmt != null && !pStmt.isClosed())
					pStmt.close();
			} catch (Exception se1) {
				se1.printStackTrace();
			}
		}
	}
	
	public void upDateM(MemberDTO MDTO) {
		String query = "update member set password=?, name=?, zipCode=?, address=? where id=?;";
		PreparedStatement pStmt = null;
		try {
			pStmt = conn.prepareStatement(query);
			pStmt.setString(1, MDTO.getPassword());
			pStmt.setString(2, MDTO.getName());
			pStmt.setInt(3, MDTO.getZipCode());
			pStmt.setString(4, MDTO.getAddress());
			pStmt.setInt(5, MDTO.getId());
			
			pStmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pStmt != null && !pStmt.isClosed())
					pStmt.close();
			} catch (Exception se1) {
				se1.printStackTrace();
			}
		}
	}
	
	public void deleteM(MemberDTO MDTO) {
		String query = "delete from member where id=?;";
		PreparedStatement pStmt = null;
		try {
			pStmt = conn.prepareStatement(query);
			pStmt.setInt(1, MDTO.getId());
			pStmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pStmt != null && !pStmt.isClosed())
					pStmt.close();
			} catch (Exception se1) {
				se1.printStackTrace();
			}

		}
	}

	public int login(int id, String password) {
		String query = "select id, password from member where id=?;";
		PreparedStatement pStmt = null;
		MemberDTO MDTO = new MemberDTO();
		String dbPassword="";
		try {
			pStmt = conn.prepareStatement(query);
			pStmt.setInt(1, id);
			ResultSet rs = pStmt.executeQuery();
			while (rs.next()) {
				MDTO.setId(rs.getInt(1));
				MDTO.setPassword(rs.getString(2));
			}
			dbPassword=MDTO.getPassword();
			
			if(MDTO.getId()==id) {
				if(dbPassword.equals(password))
					return ID_PASSMORD_MATCH;
				else
					return PSSWORD_IS_WRONG;
			}
			rs.close();
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pStmt != null && !pStmt.isClosed())
					pStmt.close();
			} catch (Exception se1) {
				se1.printStackTrace();
			}
		}
		if(MDTO.getId()!=id)
			return ID_DOSE_NOT_EXIST;
		
		return DATABASE_ERROR;
	}

	public void close() {
		try {
			if (conn != null && !conn.isClosed())
				conn.close();
		} catch (Exception se2) {
		}
	}
}
