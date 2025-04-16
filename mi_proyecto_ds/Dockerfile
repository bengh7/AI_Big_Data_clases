FROM jupyter/scipy-notebook

WORKDIR /home/jovyan
USER root

#copiar los archivos necesarios
COPY notebooks /home/jovyan/notebooks
COPY data /home/jovyan/data
COPY results /home/jovyan/results

RUN mkdir -p /home/jovyan/results \
    && mkdir -p /home/jovyan/data \    
    && mkdir -p /home/jovyan/notebooks \
    && chown -R jovyan:users /home/jovyan \
    && chmod -R 777 /home/jovian/data \
    && chmod -R 777 /home/jovian/notebooks \
    && chmod -R 777 /home/jovian/results

#Establecer las variables de entrono necesarias
ENV JUPYTER_ENABLE_LAB=yes
USER jovyan

# Exponer el puerto
EXPOSE 8000

#Comando para iniciar jupyter notebook
CMD ["start-notebook.sh"]

