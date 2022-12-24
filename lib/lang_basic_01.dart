void main() {
  //1. 주석 <- 한줄 주석은 슬래시
  /**
   * 여러줄 주석
   */
  ///
  /// 여러줄의 주석 (다른 방법)
  ///

  //2. 변수
  int num1 = 100;
  double num2 = 3.14;
  num num3 = 100;
  num num4 = 3.14;

  late double sum1 = num1 + num2;
  //late int sum2 = num1 + num2;

  print(sum1);

  num sum3 = num3 * num4;
  print(sum3);

  //3. 문자열
  String text = "Carpe diem, quam minimum credula postero";
  String myName = 'yudong';
  String hello = "Hello, ${myName}";
  print(text.substring(0, 10));
  print(hello);

  print("[3.3 주석, 변수, 데이터 타입]-------------------");

  String str1 = "flutter";
  String str2 = "google";
  String plus = str1 + " " + str2;
  int len = plus.length;
  print(plus + " => length : $len");

  //4. 부울형
  bool a = true;
  bool b = false;
  bool chk = a && b;
  print('chk is $chk');

  //5. 동적 타입(var)
  var strLen = len; // 숫자형
  var text1 = str1; // 문자열
  var check = chk; // 부울형
  var variable = text1; // var형
  print('$strLen , $text1 , $check , $variable');

  //6. 컴파일 오류(보너스)
  //variable = chk;
  // print('$variable');

  print("[3.4 연산자]-------------------");
  //1. 할당, 산술 연산자
  int number = 99;
  number += 1;
  print('number = $number');

  //2. 관계 연산자
  const double PIE = 3.14;
  if (PIE >= 3) {
    print('PIE는 3 이상이다');
  }

  //3. 논리 연산자
  const String PASSWORD = '1234';
  String _input = '12345';
  if (_input == PASSWORD) {
    print('로그인 성공');
  } else {
    print('비밀 번호를 다시 입력하세요.');
  }

  //4. 삼항 연산자
  String _nextInput = '1234';
  String _loginResult = PASSWORD == _nextInput ? '로그인 성공' : '비밀번호를 다시 입력하세요';
  print(_loginResult);
}
