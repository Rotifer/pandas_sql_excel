# Set-up Notes

## Added jupyter-lab

Although pandas was already installed for the virtual environment Python, it was not available
from Jupyter. The problem is that Jupyter is not using the virtualenv Python. To get it to do so,
I followed these guidelines:

[Using Virtual Environments in Jupyter Notebook and Python](https://janakiev.com/blog/jupyter-virtual-envs/)

I ran the following command and it worked:

```{sh}
pip install ipykernel
python -m ipykernel install --user --name=myenv
```

I can now run the command `import pandas as pd`

Also, this has solved another problem and now allows me to install and run __ipython-sql__.

See [How To run SQL queries from a Jupyter Notebook](https://towardsdatascience.com/how-to-run-sql-queries-from-a-jupyter-notebook-aaa18e59e7bc)

## Meet ipython-sql
ipython-sql enables us to run SQL queries directly from a Jupyter Notebook. No need to write multiple lines of code to connect to the database or wrap the query in a string. ipython-sql makes querying a database from Jupyter Notebook “cleaner”.

To install ipython-sql simply run the following command in a Jupyter Notebook:

!pip install ipython-sql
Then load the SQL module:

%load_ext sql
We need a connection string to connect to the database. For SQLite, it is as simple as:

%sql sqlite://
If you’ve used SQLAlchemy before to connect to a database, you can use the code below to obtain the connection string:

print("connecting with engine " + str(engine))
Note, each cell needs to be annotated with %%sql. This tells the Jupyter Notebook that the code in the cell is SQL.


## Google Sheets for importing data

[Pivot_longer](https://docs.google.com/spreadsheets/d/1HN8gZ_MIOl59ADKA3pQtOTq36mKAWO0ckbFUW3QHN6I/edit?usp=sharing)

Uses the function:

`=IMPORTHTML("https://en.wikipedia.org/wiki/2018%E2%80%9319_Premier_League", "table", 6)`



