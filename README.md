# Flask_app
First Flask APP with ALL CRUD Operations.

# Project_Setup 
Create project with virtual environment
    $ mkdir flask_app
    $ cd flask_app
    $ python3 -m venv venv
    
# Activate Environment    
    $ . venv/bin/activate
    
# Install Flask and SQLAlchemy 
    Install Flask

    $ pip install Flask
    $ pip install Flask-SQLAlchemy
    
# Set environment variables in terminal

    $ export FLASK_APP=app.py
    $ export FLASK_ENV=development
    
# Run the app

    $ flask run    
    
# Applkication Overview and Usage     

   TODO app to insert todos in the list which will store the title of todos in SQLite databse.
   
#  Perform ALl CRUD Operation with Frontend.

#  Tool used to view data from database 

    SQLite Viewer.
#  Application
    
    Home page contains a input text fild in which we add our title of todo.
    
    Next we submit this by button add in the database.
    
    ----------to add data to the table---------------
               db.session.add(new_todo)
               db.session.commit()
    
    The same page Display the record of previous data from the table by using GET method which is i the same home page.
    
    -------To view the data from the table---------
               
               Todo.query.all()
    
    After adding TODO to the list we can perform UPDATE and DELETE from the home page.
    
    -------update data to the exixting data of table------------
            
            todo = Todo.query.filter_by(id=todo_id).first()
            todo.complete = not todo.complete
            db.session.commit()

    Since in Update we require id of the Particular todo so identify the same todo from databse.
    
    Here in update we use update to mark the task that it is Completed or not Completed.
    
    We will use DELETE method to delete the todo from the database using id of the todo.
    
    ---------------Delete the data from table---------------------------------
    
                    todo = Todo.query.filter_by(id=todo_id).first()
                    db.session.delete(todo)
                    db.session.commit()
                    
   SQLite query to view data: 
    
    SELECT * FROM 'todo' 
