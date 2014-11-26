function validate()
    {

       for (index = 0; index < results.length; index++) {
        .....

        apa(apartment,index);

        },
        error: function(object, error) {            
            alert('error');             

        }
        });         

        function apa(apartment,index)
        {
            alert(index); // [I'm not getting the index value inside this function]
            alert(apartment);

        }

    }

}