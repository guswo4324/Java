package thisisjava.ch06.exam11;

public class KoreanExample {

	public static void main(String[] args) {
		Korean k1 = new Korean("123456-1234567", "김자바");
		
		System.out.println(k1.nation);
		System.out.println(k1.ssn);
		System.out.println(k1.name);
		
		//Final 필드는 값을 변경할 수 없음
		//k1.nation = "USA";
		//k1.ssn = "123-12-1234";
		
		
		//final에 속하지 않은 name은 변경가능 
		
		k1.name = "뿌직";
		System.out.println(k1.name);

	}

}
