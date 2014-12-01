    import java.util.*;
    
    
    public class BulgarianSolitaire
    {
        public static void main()
        {
            ArrayList<Integer>  cards;
            for(int i=0;i < 100;i++)
            {
                cards = initialBoard();
                System.out.println( cards + " -- " + sumOfBoard(cards));
            }
        }
    
        private static int sumOfBoard( ArrayList<Integer>  cards )
        {
            int sum = 0;
            for(Integer a: cards)
            {
                sum += a;
            }
            return sum;
        }
        
        private static final int SUM_OF_CARDS = 45;
        private static final int NUMBER_OF_CARDS_TO_DRAW = 5;
        
        private static ArrayList<Integer> initialBoard() 
        {
            Random rand = new Random();
            ArrayList<Integer> cards = new ArrayList<Integer>();
            int numberOfRandomCards = NUMBER_OF_CARDS_TO_DRAW -1;
            int pile = 0;
            int cardAmount = SUM_OF_CARDS;
            int currentSum = 0;
            for(int i=0;i<numberOfRandomCards;i++)
            {
                // we draw big numbers our sum are greater than 45 therefore start again.
                if (cardAmount <= 1)
                {
                    return initialBoard();
                }
                pile = rand.nextInt(cardAmount-1) + 1;
                cardAmount -= pile;
                currentSum += pile;
                cards.add(pile);
            }
            cards.add(SUM_OF_CARDS - currentSum);
            return cards;
        }
    }
