> from ActiveRecord Basics
[teamtreehouse.com/library/rails-models]()

###features  
billing soft "mock_active_record"  

user goes to employee list page   
and [link_to] open an employee detail page  

user goes to employee list page  
and [form_for] should be able create another employee *  
and it moves to...  
...the employee list page  

user goes to account list (customer list) page  
and [link_to] open a customer detail page  

  time <- time_entries table  

user goes to an employee detail page  
and [form_for] select a customer and fill in her time info  
and [submit] user screen moves to...   
...the customer detail page  

user goes to a customer detail page  
and the customer detail pages shows total time and cost  


###make models  
(make tables - mysql)  
  
customers  
employees  
  
time_entries  
  
  
make ["Customer" model and "Employee" model] subclass ["Account" model] and share one ["accounts" table]  
  
remove_old_tables  
"Customer is not a subclass of Account"  
  
make ["TimeEntry" model] subclass ["AccountEntry" model] and use ["account_entries" table]  
  
remove_another_table  
"ActiveRecord::SubclassNotFound: Invalid single-table inheritance type: TimeEntry"  