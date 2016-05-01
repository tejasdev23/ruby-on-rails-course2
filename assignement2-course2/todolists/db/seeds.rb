# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

User.create! [
{username:"Fiorina",password_digest:"Carly"},
{username:"Trump",password_digest:"Donald"},
{username:"Carson",password_digest:"Ben"},
{username:"Clinton",password_digest:"Hillary"}
]

Profile.create! [
{gender:"female",birth_year:1954,first_name:"Carly",last_name:"Fiorina",user_id:1},
{gender:"male",birth_year:1946,first_name:"Donald",last_name:"Trump",user_id:2},
{gender:"male",birth_year:1951,first_name:"Ben",last_name:"Carson",user_id:3},
{gender:"female",birth_year:1947,first_name:"Hillary",last_name:"Clinton",user_id:3}
]



TodoList.create! [
{list_name:"CODING",list_due_date:Date.today+1.year,user_id: User.find_by_username('Fiorina').id },
{list_name:"FINANCE",list_due_date:Date.today+1.year,user_id: User.find_by_username('Trump').id },
{list_name:"RESEARCH",list_due_date:Date.today+1.year,user_id: User.find_by_username('Carson').id },
{list_name:"FRUITS",list_due_date:Date.today+1.year,user_id: User.find_by_username('Clinton').id }
]




TodoItem.create! [
{due_date:Date.today+1.year,title:"Ruby on rails",description:"on coursera",completed:true,todo_list_id:TodoList.find_by_list_name('CODING').id},
{due_date:Date.today+1.year,title:"Ruby on rails",description:"on coursera",completed:true,todo_list_id:TodoList.find_by_list_name('CODING').id},
{due_date:Date.today+1.year,title:"Ruby on rails",description:"on coursera",completed:true,todo_list_id:TodoList.find_by_list_name('CODING').id},
{due_date:Date.today+1.year,title:"Ruby on rails",description:"on coursera",completed:true,todo_list_id:TodoList.find_by_list_name('CODING').id},
{due_date:Date.today+1.year,title:"Ruby on rails",description:"on coursera",completed:true,todo_list_id:TodoList.find_by_list_name('CODING').id},
{due_date:Date.today+1.year,title:"Stock Market",description:"on edx",completed:true,todo_list_id:TodoList.find_by_list_name('FINANCE').id},
{due_date:Date.today+1.year,title:"Stock Market",description:"on edx",completed:true,todo_list_id:TodoList.find_by_list_name('FINANCE').id},
{due_date:Date.today+1.year,title:"Stock Market",description:"on edx",completed:true,todo_list_id:TodoList.find_by_list_name('FINANCE').id},
{due_date:Date.today+1.year,title:"Stock Market",description:"on edx",completed:true,todo_list_id:TodoList.find_by_list_name('FINANCE').id},
{due_date:Date.today+1.year,title:"Stock Market",description:"on edx",completed:true,todo_list_id:TodoList.find_by_list_name('FINANCE').id},
{due_date:Date.today+1.year,title:"Astronomy",description:"on mit.edu",completed:true,todo_list_id:TodoList.find_by_list_name('RESEARCH').id},
{due_date:Date.today+1.year,title:"Astronomy",description:"on mit.edu",completed:true,todo_list_id:TodoList.find_by_list_name('RESEARCH').id},
{due_date:Date.today+1.year,title:"Astronomy",description:"on mit.edu",completed:true,todo_list_id:TodoList.find_by_list_name('RESEARCH').id},
{due_date:Date.today+1.year,title:"Astronomy",description:"on mit.edu",completed:true,todo_list_id:TodoList.find_by_list_name('RESEARCH').id},
{due_date:Date.today+1.year,title:"Astronomy",description:"on mit.edu",completed:true,todo_list_id:TodoList.find_by_list_name('RESEARCH').id},
{due_date:Date.today+1.year,title:"Mango",description:"on mva",completed:true,todo_list_id:TodoList.find_by_list_name('FRUITS').id},
{due_date:Date.today+1.year,title:"Mango",description:"on mva",completed:true,todo_list_id:TodoList.find_by_list_name('FRUITS').id},
{due_date:Date.today+1.year,title:"Mango",description:"on mva",completed:true,todo_list_id:TodoList.find_by_list_name('FRUITS').id},
{due_date:Date.today+1.year,title:"Mango",description:"on mva",completed:true,todo_list_id:TodoList.find_by_list_name('FRUITS').id},
{due_date:Date.today+1.year,title:"Mango",description:"on mva",completed:true,todo_list_id:TodoList.find_by_list_name('FRUITS').id}
]


#gender	-	a	string	to	hold	the	words	"male"	or	"female"
##birth_year	-	a	number	to	hold	the	year	the	individual	was	born
#first_name	-	a	string	with	given	name	of	user
#last_name	-	a	string	with	family	name	of	user
#user	-	a	1:1	relationship	with	User	(i.e.,	Profile	belongs_to	User)
#Carly	Fiorina,	1954
#Donald	Trump,	1946
#Ben	Carson,	1951
#Hillary	Clinton,	1947