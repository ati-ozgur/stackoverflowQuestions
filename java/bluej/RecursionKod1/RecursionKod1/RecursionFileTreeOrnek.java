import java.io.*;
public class RecursionFileTreeOrnek
{
    public static void main()
    {
        String startDirectory = "/Users/atilla/Projects/bitbucket/datastructures";
        printDirectory("",startDirectory);
    }
    
    public static void printDirectory(String indentation,String directory)
    {
        File folder = new File(directory);
        File[] listOfFiles = folder.listFiles();
        for(File f: listOfFiles)
        {
            if (f.isDirectory())
            {
                printDirectory(indentation + "__",f.getAbsolutePath());
            }
            System.out.println(indentation + "  " + f.getName());
        }

    }
}
