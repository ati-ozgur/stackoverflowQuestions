//http://stackoverflow.com/questions/27313922/mongodb-aggregation-unwind-then-count



for (var i = 10000; i >= 0; i--) {
    var a = {
      'id': 1,
      'steps': [
        {
          action: 'start',
          info: 'foo'
        },
        {
          action: 'stop',
          info: 'bar'
        }
      ]
    }

    a.id = i;
    var rnd = Math.floor((Math.random() * 3) + 1);
    if (rnd == 1)
    {
        a.steps[0].action = 'none';
    }
    if (rnd == 2)
    {
        a.steps.push({ action: 'start', info: 'foo' })

    }
    db.obj.insert(a);
};

