public class Program
{
    public static void main() throws Exception
    {
        String fileName = "/Users/atilla/Music/Kapi.mp4";
        ProcessBuilder pb =new ProcessBuilder("open",fileName);
        Process process = pb.start();
        
        
        
    }
    
}
