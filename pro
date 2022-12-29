import java.util.Scanner;

public class ProektItogov {
public static void main(String[] args) {
boolean charac = true;
int hod = 0;
String poleChar = " ";
System.out.println("Нумерация:\n[1][2][3] \n[4][5][6]\n[7][8][9]");
String[] gamePole = new String[9];
for (int i = 0; i < 9; i++) {
gamePole[i] = poleChar;
}
System.out.println("Внимательно крестик это буква (x), а нолик английская буква (o) ");
while (hod < 9) {
System.out.println();
for (int i = 0; i < 9; i++) {
System.out.print("[" + gamePole[i] + "]");
if ((i + 1) % 3 == 0) {
System.out.println();
}
}
if (charac==true){
System.out.print("Ходит первый игрок (крестик): ");
}
else{
System.out.print("Ходит второй игрок (нолик): ");
}
Scanner scan = new Scanner(System.in);
int answer2 = 0;
if (scan.hasNextInt()) {
answer2 = scan.nextInt();
} else {
System.out.println("Нельзя вводить символы отличные от числа, введите число");
continue;
}
if (answer2 < 10) {
for (int i = 0; i < 9; i++) {
if (gamePole[answer2 - 1] == " ")
if (answer2 == i + 1) {
if (charac == true) {
gamePole[i] = "x";
charac = false;
} else {
gamePole[i] = "o";
charac = true;
}
hod++;
}
}
if (gamePole[0].equals(gamePole[1]) && gamePole[0].equals(gamePole[2]) && !gamePole[0].equals(" ")) {
String player = gamePole[0].equals("x") ? "Первый" : "Второй";
System.out.println(player + " игрок выигрывает");
break;
}
if (gamePole[3].equals(gamePole[4]) && gamePole[3].equals(gamePole[5])&& !gamePole[3].equals(" ")) {
String player = gamePole[3].equals("x") ? "Первый" : "Второй";
System.out.println(player + " игрок выигрывает");
break;
}
if (gamePole[6].equals(gamePole[7]) && gamePole[6].equals(gamePole[8]) && !gamePole[6].equals(" ")) {
String player = gamePole[6].equals("x") ? "Первый" : "Второй";
System.out.println(player + " игрок выигрывает");
break;
}
if (gamePole[0].equals(gamePole[4]) && gamePole[0].equals(gamePole[8]) && !gamePole[0].equals(" ")) {
String player = gamePole[0].equals("x") ? "Первый" : "Второй";
System.out.println(player + " игрок выигрывает");
break;
}
if (gamePole[2].equals(gamePole[4]) && gamePole[2].equals(gamePole[6]) && !gamePole[2].equals(" ")) {
String player = gamePole[2].equals("x") ? "Первый" : "Второй";
System.out.println(player + " игрок выигрывает");
break;
}
if (gamePole[0].equals(gamePole[3]) && gamePole[0].equals(gamePole[6]) && !gamePole[0].equals(" ")) {
String player = gamePole[0].equals("x") ? "Первый" : "Второй";
System.out.println(player + " игрок выигрывает");
break;
}
if (gamePole[1].equals(gamePole[4]) && gamePole[1].equals(gamePole[7]) && !gamePole[1].equals(" ")) {
String player = gamePole[1].equals("x") ? "Первый" : "Второй";
System.out.println(player + " игрок выигрывает");
break;
}
if (gamePole[2].equals(gamePole[5]) && gamePole[2].equals(gamePole[8]) && !gamePole[2].equals(" ")) {
String player = gamePole[2].equals("x") ? "Первый" : "Второй";
System.out.println(player + " игрок выигрывает");
break;
}
else{
if(hod>=9){
System.out.println("Ничья!");
}
}

} else {
System.out.println("Вводите числа в пределе полей!");
}

}
System.out.println();
for (int i = 0; i < 9; i++) {
System.out.print("[" + gamePole[i] + "]");
if ((i + 1) % 3 == 0) {
System.out.println();
}
}
}
}
