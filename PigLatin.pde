import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i = 0; i < sWord.length(); i++)
  {
    String bud = sWord.substring(i, i+1);
    if(bud.equals("a") ||bud.equals("e") || bud.equals("i") || bud.equals("o") || bud.equals("u"))
    {
      return i;
    }	
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	String let = sWord.substring(0,1);
	if(let.equals("a") || let.equals("e") || let.equals("i") || let.equals("o") || let.equals("u"))
	{
		return sWord + "way";
	}
	if(sWord.substring(0,2).equals("qu"))
	{
		String newS = sWord.substring(2,sWord.length());
		return newS + "quay";
	}
	if()
	else
	{
		return "ERROR!";
	}
}
