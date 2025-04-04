FROM jupyter/scipy-notebook 

COPY requeriments.txt /home/jovyan
RUN pip install --no-cache-dir -r /home/jovyan/requeriments.txt

WORKDIR /home/jovyan

CMD ["start-notebook.sh", "--NotebookApp.token''", "--NotebookApp.password=''"]


