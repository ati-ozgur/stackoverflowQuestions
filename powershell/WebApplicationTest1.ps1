    $url = "http://stackoverflow.com/"
    $ie = new-object -com internetexplorer.application
    $ie.visible=$true
    $ie.navigate($url)


    while($ie.busy) {
    sleep 5
    }

    $links = $ie.Document.GetElementsByTagName("a")
    foreach ($a in $links){
        $href = $a.href
        if ($href -like '*questions*' )
        {
            print "Found Link :  $href Clicking"
            $a.click()
            break
        }
    }

