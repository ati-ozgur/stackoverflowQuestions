public class RecursionFibonacci
{
    public static int findFibonacci (int n)
    {
        // Recursion
        // Kendi kendini cağırma
        // CIKIS Durumu - Stackoverflow olmasın.
        if ( n < 1)
        {
            return 0;
        }
        if (n == 1 || n == 2)
        {
            return 1;
        }
        return findFibonacci(n-1)+ findFibonacci(n-2);
    }
}
