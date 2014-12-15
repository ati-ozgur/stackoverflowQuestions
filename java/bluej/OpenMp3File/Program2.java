import java.io.*;
import java.awt.Desktop;
public class Program2
{
    public static void main() throws Exception
    {
        String fileName = "/Users/atilla/Music/Kapi.mp4";

        File mp3 = new File(fileName);
        Desktop.getDesktop().open(mp3);
    }
}
