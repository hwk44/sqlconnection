package sqlconnection;

import java.sql.*;
import java.util.Scanner;

public class dbconTest {

	public String dbname;
	public String tablename;
	public Connection con;
	public PreparedStatement psmt;
	public ResultSet rs;
	public CallableStatement stmt; // 프로시저 접근을 위한

	// mysql 연결 순서
	// 라이브러리 등록 jar
	// 2. 드라이브 로딩
	// db 연결
	// 쿼리 준비
	// 5. 쿼리 실행
	// 6 쿼리 가져오기
	// 6 객체 닫기

	public dbconTest(String db, String tablename) throws SQLException { // 생성자

		this.dbname = db;
		this.tablename = tablename;

		try {
			// JDBC 드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + this.dbname, "root", "1234");
			System.out.println("드라이브 로드");
		} catch (Exception e) {
			System.out.println("DB 연결  실패");
			e.printStackTrace();
		}
	}

	public void dbclose() {
		try {

			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close();
			System.out.println("자원 해제");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("자원 해제 실패");
		}

	}


	// 정보 삽입
	public void insert() throws SQLException {

//		this.tablename = tablename;

		Scanner sc = new Scanner(System.in);

		System.out.print("아이디 : ");
		String uid = sc.next();

		// 같은 아이디가 있는지 확인
		if (!check(uid)) { // 같은 아이디가 없다면? 있으면 트루임

//			int i = 0;
//			while( i < 120) {
			try {
//				i++;
			
//				String uid = String.valueOf(i);
//				String name = "test";
//				String email = "test" + String.valueOf(i)+"@gmail.com";
				System.out.print("이름 : ");
				String name = sc.next();
				System.out.print("이메일 : ");
				String email = sc.next();

				psmt = con.prepareStatement("insert into " + this.tablename + " (uid, uname, email) values('" + uid
						+ "', '" + name + "', '" + email + "')");

				psmt.executeUpdate(); // update 쿼리 실행
				System.out.println("입력 성공");
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("정보 입력 실패");
			}

		} else
			System.out.println("동일 아이디가 존재합니다.");

	}

	public void update() throws SQLException {

		Scanner sc = new Scanner(System.in);

		System.out.print("아이디 : ");
		String uid = sc.next();

		try {
			System.out.print("변경할 이름 : ");
			String name = sc.next();
			System.out.print("변경할 이메일 : ");
			String email = sc.next();

			psmt = con.prepareStatement("update " + this.tablename + " set uname = '" + name + "' , email = '" + email
					+ "' where uid ='" + uid + "'");

//			psmt = con.prepareStatement("insert into user values(1234, 'ggd', 'e123@3qwrsd')");
			psmt.executeUpdate(); // update 쿼리 실행
			System.out.println("입력 성공");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("정보 업데이트 실패");
		}

	}

	// insert 시에 id가 있는지 확인하는 메서드
	public boolean check(String uid) throws SQLException {

		boolean check = false;
		// 같은 아이디가 있는지 확인.. 있으면 true 없으면 false
		try {
			psmt = con.prepareStatement("select * from " + this.tablename + " where uid=?");
			psmt.setString(1, uid);
			rs = psmt.executeQuery(); // update 쿼리 실행

			if (rs.next()) { // 결과가 있으면 바로 return
//				System.out.println(rs.getString(1));
//				if (rs.getString(1) == uid)
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("아이디 중복조회 실패");
		}
		return check;

	}

	// 테이블명을 입력받아 모든 정보를 출력
	public void searchAll() throws SQLException {
//		this.tablename = tablename;

		try {
			psmt = con.prepareStatement("select * from " + this.tablename);
			rs = psmt.executeQuery(); // 쿼리 실행

			while (rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				System.out.println("id : " + id + " name : " + name + " email : " + email +
						" 등록일시 : " + rs.getString(4));
				

			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("출력 실패");

		}

	}
	
	// 삭제 테이블 모든 정보를 출력
	public void deluser() throws SQLException {
		this.tablename = "deluser";

		try {
			psmt = con.prepareStatement("select * from " + this.tablename);
			rs = psmt.executeQuery(); // 쿼리 실행

			while (rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				System.out.println("id : " + id + " name : " + name + " email : " + email +
						" 삭제일시 : " + rs.getString(4));
				

			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("출력 실패");

		}

	}

	// 테이블 명과 아이디를 입력받아 찾기
	public void search(String tablename, String id) throws SQLException {
		this.tablename = tablename;

		try {
			psmt = con.prepareStatement("select * from " + this.tablename + " where id=?");
			psmt.setString(1, id);
			rs = psmt.executeQuery(); // 쿼리 실행

			while (rs.next()) {
				if (rs.getString(1) == id) {
					System.out.println("결과가 존재합니다.");
					System.out.println("id = " + id + " name = " + rs.getString(2) + " email = " + rs.getString(3));
					return;
				}
			}
			System.out.println("조회 결과가 없습니다.");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("검색 실패");

		}

	}

	// 데이터 삭제
	public void delete() throws SQLException {

		Scanner sc = new Scanner(System.in);

		System.out.print("삭제할 아이디 : ");
		String uid = sc.next();

		// 데이터 있는지 확인
		if (check(uid)) { // 있으면 true ==> 삭제

			try {
				psmt = con.prepareStatement("delete from " + this.tablename + " where uid=?");
				psmt.setString(1, uid);
				psmt.executeUpdate(); // 쿼리 실행
				System.out.println("삭제 성공");
				return;

			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("삭제 실패");

			}
		} else {
			System.out.println("삭제할 정보가 없습니다.");
		}

	}

	// 프로시져 사용
	public void Procesure() throws SQLException {

//		this.tablename = tablename;
		Scanner sc = new Scanner(System.in);

		try {
			System.out.print("책번호 : ");
			int id = sc.nextInt();
			System.out.print("책이름 : ");
			String name = sc.next();
			System.out.print("출판사 : ");
			String publisher = sc.next();
			System.out.print("가격 : ");
			int price = sc.nextInt();

			stmt = con.prepareCall("call InsertBook(?,?,?,?)");
			stmt.setInt(1, id);
			stmt.setString(2, name);
			stmt.setString(3, publisher);
			stmt.setInt(4, price);
//			psmt = con.prepareStatement("insert into user values(1234, 'ggd', 'e123@3qwrsd')");
			stmt.executeQuery(); // update 쿼리 실행
			System.out.println("입력 성공");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("정보 입력 실패");
		}

	}


	public void insertProcesure() throws SQLException {

		Scanner sc = new Scanner(System.in);
		System.out.print("아이디 : ");
		String uid = sc.next();
		if (!check(uid)) { // 같은 아이디가 없다면? 
		try {
			
			System.out.print("이름 : ");
			String uname = sc.next();
			System.out.print("email : ");
			String email = sc.next();

			stmt = con.prepareCall("call insertuser(?,?,?)");
			stmt.setString(1, uid);
			stmt.setString(2, uname);
			stmt.setString(3, email);
			stmt.executeQuery(); 
			System.out.println("회원 등록 프로시져");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("정보 입력 실패");
		}
		}else {
			System.out.println("동일한 아이디가 존재합니다.");
		}

	}

	// 삭제 프로시져
	public void deleteProcesure() throws SQLException {

		Scanner sc = new Scanner(System.in);

		try {
			System.out.print("삭제할 아이디 : ");
			String uid = sc.next();

			stmt = con.prepareCall("call deleteuser(?)");
			stmt.setString(1, uid);
			stmt.executeQuery(); 
			System.out.println("회원 삭제 프로시져 호출 완료");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원 삭제 실패");
		}

	}
	
	public void  updateProcesure() throws SQLException {

		Scanner sc = new Scanner(System.in);

		try {
			System.out.print("수정할 아이디 : ");
			String uid = sc.next();
			System.out.print("수정될 이름 : ");
			String uname = sc.next();
			System.out.print("수정될 이메일 : ");
			String email = sc.next();

			stmt = con.prepareCall("call updateuser(?,?,?)");
			stmt.setString(1, uid);
			stmt.setString(2, uname);
			stmt.setString(3, email);
			stmt.executeQuery(); 
			System.out.println("회원정보 수정 프로시져 호출 완료");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원 정보 수정 실패");
		}

	}
	
	//  아이디를 입력받아 찾기
	public void search() throws SQLException {

		Scanner sc = new Scanner(System.in);

		try {
			
			System.out.print("찾을 아이디 : ");
			String uid = sc.next();
			
			psmt = con.prepareStatement("select * from " + this.tablename + " where uid=?");
			psmt.setString(1, uid);
			rs = psmt.executeQuery(); // 쿼리 실행

			while (rs.next()) {
					System.out.println(rs.getString(1));
					System.out.println("결과가 존재합니다.");
					System.out.println("id = " + uid + " name = " + rs.getString(2) + " email = " + rs.getString("email"));
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("검색 실패");

		}

	}
	
	public void  searchProcesure() throws SQLException {

		Scanner sc = new Scanner(System.in);

		try {
			System.out.print("찾을 아이디 : ");
			String uid = sc.next();

			stmt = con.prepareCall("call searchuser(?)");
			stmt.setString(1, uid);
			rs = stmt.executeQuery(); 
			System.out.println("회원정보 검색 프로시져 호출 완료");
			
			while(rs.next()){
			System.out.println("id = " + uid + " name = " + rs.getString(2) + " email = " + rs.getString("email"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원 정보 검색 실패");
		}

	}
}
