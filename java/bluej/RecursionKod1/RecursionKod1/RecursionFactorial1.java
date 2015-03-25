public class RecursionFactorial1
{
    public static int findFactorial(int n)
    {
        // CIKTI Durumu
        if (n <0)
        {
            return 0;
        }
        if (n==0)
        {
            return 1;
        }
        // n! = n * (n-1)!
        return n*findFactorial(n-1);
    }
}
