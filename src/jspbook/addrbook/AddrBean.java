package jspbook.addrbook;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AddrBean {
	private static final Logger LOG = LoggerFactory.getLogger(AddrBean.class);
	Connection conn = null;
	PreparedStatement pStmt = null;
	
	/*String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/ezen?verifyServerCertificate=false&useSSL=false";*/
	
	void connect() {
		LOG.trace("connect()");
		LOG.debug("connect()");
		LOG.info("connect()");
		Context init;
		try {
			init = new InitialContext();
			DataSource ds =(DataSource) init.lookup("java:comp/env/jdbc/ezen");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	void close() {
		if(pStmt !=null) {
			try {
				pStmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(conn !=null) {
			try {
				conn.close();
			}catch(Exception e) {
				e.getStackTrace();
			}
		}
	}
	
	public boolean updateDB(AddrBook ab) {
		connect();
		
		String sql="update addrbook set ab_name=?, ab_email=?, ab_birth=?, ab_tel=?, ab_company=?, ab_memo=? where ab_id=?";
		try {
			pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, ab.getAbName());
			pStmt.setString(2, ab.getAbEmail());
			pStmt.setString(3, ab.getAbBirth());
			pStmt.setString(4, ab.getAbTel());
			pStmt.setString(5, ab.getAbCompany());
			pStmt.setString(6, ab.getAbMemo());
			pStmt.setInt(7, ab.getAbId());
			pStmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			close();
		}
		return true;
	}
	
	public boolean deleteDB(int ab_id) {
		connect();
		
		String sql="delete from addrbook where ab_id=?";
		try {
			pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, ab_id);
			pStmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			close();
		}
		return true;
	}
	
	public boolean insertDB(AddrBook ab) {
		connect();
		
		String sql="insert into addrbook (ab_name, ab_email, ab_birth, ab_tel, ab_company, ab_memo) values(?,?,?,?,?,?)";
		try {
			pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, ab.getAbName());
			pStmt.setString(2, ab.getAbEmail());
			pStmt.setString(3, ab.getAbBirth());
			pStmt.setString(4, ab.getAbTel());
			pStmt.setString(5, ab.getAbCompany());
			pStmt.setString(6, ab.getAbMemo());
			pStmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			close();
		}
		return true;
	}
	
	public AddrBook getDB(int ab_id) {
		connect();
		
		String sql="select * from addrbook where ab_id=?";
		AddrBook ab = new AddrBook();
		
		try {
			pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, ab_id);
			ResultSet rs = pStmt.executeQuery();
			
			rs.next();
			ab.setAbId(rs.getInt(1));
			ab.setAbName(rs.getString(2));
			ab.setAbEmail(rs.getString(3));
			ab.setAbCompany(rs.getString(4));
			ab.setAbBirth(rs.getString(5));
			ab.setAbTel(rs.getString(6));
			ab.setAbMemo(rs.getString(7));
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return ab;
	}
	
	public ArrayList<AddrBook> getDBList(){
		connect();
		ArrayList<AddrBook> dataList = new ArrayList<AddrBook>();
		
		String sql = "select * from addrbook order by ab_id";
		try {
			pStmt = conn.prepareStatement(sql);
			ResultSet rs = pStmt.executeQuery();
			while(rs.next()) {
				AddrBook ab = new AddrBook();
				
				ab.setAbId(rs.getInt(1));
				ab.setAbName(rs.getString(2));
				ab.setAbEmail(rs.getString(3));
				ab.setAbCompany(rs.getString(4));
				ab.setAbBirth(rs.getString(5));
				ab.setAbTel(rs.getString(6));
				ab.setAbMemo(rs.getString(7));
				dataList.add(ab);
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dataList;
	}
}
