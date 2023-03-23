package sqlconnection;

import java.sql.SQLException;
import java.util.Scanner;

public class pnusw44 {

	
	public static void main(String[] args) throws SQLException {
		
		Scanner sc= new Scanner(System.in);
		
		dbconTest test= new dbconTest("pnusw44", "user"); // 생성자로 db 명과 접근할 테이블을 지정
		
		while(true){
			System.out.println("1 : insert 프로시져 ");
			System.out.println("2 : delete 프로시져 ");
			System.out.println("3 : update 프로시져 ");
			System.out.println("4 : search 프로시져 ");
			System.out.println("5 : 모든 회원정보 출력");
			System.out.println("6 : 모든 삭제 회원정보 출력");
			System.out.println("7 : 종료");
			
			System.out.print("숫자를 입력하세요");
			
			int i = sc.nextInt();
			
			switch (i) {
			case 1:
				test.insertProcesure();
				break;
			case 2:
				test.deleteProcesure();
				break;
			case 3:
				test.updateProcesure();
				break;
			case 4:
				test.searchProcesure();
				break;
			case 5:
				test.searchAll();
				break;
			case 6:
				test.deluser();
				break;
			case 7:
				test.dbclose();
				break;

			default:
				break;
			}
			
			if(i > 7 || i < 1)
				break;
		}
//		test.insertProcesure(); // insert 프로시져
//		test.deleteProcesure(); // delete 프로시져
//		test.updateProcesure(); // update 프로시져
//		test.search(); 			// search
//		
//		test.searchProcesure();
		
		test.dbclose();// db 연결 해제

		 
	}
}
