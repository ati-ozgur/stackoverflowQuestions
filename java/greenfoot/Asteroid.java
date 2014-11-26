    import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)


    public class Asteroid extends Actor
    {
        int direction=1; 
        int acceleration=0; 
        
        public void changeDirection()
        {
            direction = direction * -1;
        }
        public void resetAcceleration()
        {
            acceleration=0;
        }
        
        public int getAcceleration()
        {
            int value = (Greenfoot.getRandomNumber(25) + acceleration)* direction;
            return value;
        }
        
        public void act() 
        {
            if(getY()>(getWorld().getHeight())-50 && direction > 0  ) 
            {
                changeDirection();
                resetAcceleration();
            }
            if(getY()<50  && direction < 0)
            {
                changeDirection();
                resetAcceleration();
            }
            
            setLocation(getX(), getY()+getAcceleration());
            acceleration++;
        }    
    }