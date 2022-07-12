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

