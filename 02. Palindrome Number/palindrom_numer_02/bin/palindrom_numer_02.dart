void main() {
  print(isPalindrome(121));
}

/*
   * LeetCode doesn't accept the solution
   * as Time Limit Exceeds.
   * However this is either due to Dart being slow or
   * any kind of LeetCode issue
  */

bool isPalindrome(int x) {
  if (x < 0 || (x % 10 == 0 && x != 0)) {
    return false;
  }
  int revNum = 0;
  while (x > revNum) {
    revNum = revNum * 10 + x % 10;
    x = x ~/ 10;
  }

  return x == revNum || x == revNum ~/ 10;
}
