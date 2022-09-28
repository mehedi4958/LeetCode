void main() {
  isPalindrome(1221);
}

/*
   * LeetCode doesn't accept the solution
   * as Time Limit Exceeds.
   * However this is either due to Dart being slow or
   * any kind of LeetCode issue as Dart is recently introduced in LeetCode
  */

bool isPalindrome(int x) {
  /// cancel out any negative, divisible by 10, and 0;
  if (x < 0 || (x % 10 == 0 && x != 0)) {
    return false;
  }

  int revNum = 0;

  /// reverses digits up to half of x and compares it to other half
  /// reversing half of 1221 gives 21 which is equal to the next half 21
  while (x > revNum) {
    revNum = revNum * 10 + x % 10;
    x = x ~/ 10;
  }

  return x == revNum || x == revNum ~/ 10;
}
