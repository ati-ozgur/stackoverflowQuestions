
public class Quiz05
{
    public static void main()
    {
        int[] dizi1 = {1};
        int[] dizi2 = {2};
        int[] dizi3 = {3};
        int[] dizi4 = {4};
        int[] dizi5 = null;
        int[] dizi6 = dizi1;
        int[] dizi7 = dizi6;
        int[] dizi8 = dizi3;
        dizi6 = dizi4;
        dizi5 = dizi2;
        dizi3 = dizi5;
        dizi4 = dizi2;
        dizi1 = dizi7;
        printDiziIcerik(dizi1);
        printDiziIcerik(dizi2);
        printDiziIcerik(dizi3);
        printDiziIcerik(dizi4);
        printDiziIcerik(dizi5);
        printDiziIcerik(dizi6);
        printDiziIcerik(dizi7);
        printDiziIcerik(dizi8);
    }
    
    private static void printDiziIcerik(int[] dizi)
    {
        System.out.print("{");
        for(int a: dizi)
        {
            System.out.print(a + ",");
        }
        System.out.println("}");
    }
}
