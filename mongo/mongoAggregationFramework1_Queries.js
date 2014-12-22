db.obj.count({"steps.action":"start"})

db.obj.aggregate(
[
{$match: { "steps.action" : "start" }},
{ $unwind : "$steps"}
]
)

db.obj.aggregate(
[
{$match: { "steps.action" : "start" }},
{ $unwind : "$steps.action"}
]
)


db.obj.aggregate(
[
{$match: { "steps.action" : "start" }},
{ $unwind : "$steps"},
{
$group:
 {
   _id:  null
   ,count: { $sum: 1 }
 }
}
]
)

db.obj.aggregate(
[
{ $unwind : "$steps"},
{$match: { "steps.action" : "start" }},
{
$group:
 {
   _id:  null
   ,count: { $sum: 1 }
 }
}
]
)