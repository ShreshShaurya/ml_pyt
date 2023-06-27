FROM python:3.8


RUN pip install mlflow>=1.0 \
    && pip install numpy==1.21.2 \
    && pip install scipy \
    && pip install pandas==1.3.3 \
    && pip install torch==2.0.1 \
    && pip install dvc==2.58.1 \
    && pip install cloudpickle