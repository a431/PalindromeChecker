public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (reverse(word).equals(word)){
    return true;
  } else if (reverse(noSpaces(word)).equals(noSpaces(word))){
    return true;
  } else if (reverse(onlyLetters(noCapitals(noSpaces(word)))).equals(onlyLetters(noCapitals(noSpaces(word))))) { 
    return true;
  } else {
    return false;
  }
}
public String reverse(String str)
{
  String result = new String();
  for(int i = str.length()-1; i>=0; i--)
    result = result + str.charAt(i);
  return result;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase(); 
}

public String noSpaces(String sWord){
  String answer = "";
  
  for (int i = 0; i < sWord.length(); i++) {
    if (Character.isLetter(sWord.charAt(i)) == true) { 
      answer+=(sWord.substring(i, i + 1));
    }
  }
  return answer;
}


public String onlyLetters(String sString){
  String answer = "";
  
  for (int i = 0; i < sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i)) == true) { 
      answer+=(sString.substring(i, i + 1));
    }
  }
  return answer;
}

