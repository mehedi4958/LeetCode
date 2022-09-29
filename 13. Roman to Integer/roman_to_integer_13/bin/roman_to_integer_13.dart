import 'dart:ffi';

void main() {
  romanToInt('IV');
}

int romanToInt(String s) {
  const valueMap = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };
  int sum = 0;

  int i = s.length - 1;
  do {
    if (i == s.length - 1) {
      sum += valueMap[s[i]] as int;
      i--;
    } else {
      if (valueMap[s[i]] as int < (valueMap[s[i + 1]] as int)) {
        sum -= valueMap[s[i]] as int;
      } else {
        sum += valueMap[s[i]] as int;
      }
      i--;
    }
  } while (i >= 0);

  return sum;
}
