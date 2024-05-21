import java.util.*;
 public class lyla{
  public static void main(String [] arlz){
    Random random =new Random();
    int array [][] = new int [6][6];

    for(int a1 = 0; a1 < 1; a1++){
      for(int a2 = 0; a2 < array.length; a2++){
        for(int a3 = 0; a3 < array.length; a3++){
          array [a2][a3] =random.nextInt(5)+1;

        }
      }
      int count1 =0, count2 =0, count3= 0, count4=0, count5=0;
      for(int a4 =0; a4< array.length; a4++){
        System.out.print("|\t");
        for(int a5 =0; a5 <array.length; a5++){
          System.out.print(array[a4][a5]+ "|\t");
          if(array [a4][a5] >= 0 && array [a4][a5] <= 1){
             count1++;
          }else if(array [a4][a5] >=1  && array [a4][a5] <= 2){
            count2++;

          }else if(array [a4][a5] >= 2 && array [a4][a5] <= 3){
            count3++;
          }else if(array [a4][a5] >= 3 && array [a4][a5] <= 4){
            count4++;
          }else if(array [a4][a5] >= 4 && array [a4][a5] <= 5){
            count5++;
          }
        }
        System.out.println();

      }
      System.out.println("1 ="+ count1+ " intance(s)");
      System.out.println("2 ="+ count2+ " intance(s)");
      System.out.println("3 ="+ count3+ " intance(s)");
      System.out.println("4 ="+ count4+ " intance(s)");
      System.out.println("5 ="+ count5+ " intance(s)");

    } 
  }
 }