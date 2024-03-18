class PracticeOne {
  // Palindrome 
bool isPalindrome(String data){
  for(var i = 0; i < data.length ~/ 2; i++) {
    if(data[i] != data[data.length - i - 1]) {
      return false;
    } 
  }
  return true;
}

}