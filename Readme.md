# Pytorch + MLflow + DVC 
### FashionMNIST Classification with PyTorch

This repository contains an example of training a deep learning model on the FashionMNIST dataset using PyTorch. It demonstrates how to use MLflow for tracking the model and DVC for tracking the data. 

#### 1. Install the required packages:
- pip install -r requirements.txt

#### 2. Data Setup
- Initialize DVC and set up remote storage (if necessary):
 ```sh
dvc init
```
Using dvc init in workspace will initialize a DVC project, including the internal .dvc/ directory

- Configure DVC remote storage (e.g., AWS S3, Google Cloud Storage):
this will add data to remote storage
 ```sh
dvc remote add -d remote_storage path/to/your/dvc_remote
```
dvc add copies the specified directory or files to .dvc/cache or shared_cache/you/specified, creates .dvc files for each tracked folder or file and adds them to .gitignore
* .dvc and other files are tracked with git add --all

- Track the data directory with DVC:
 ```sh
dvc add data
dvc push
```

#### 3. MLflow
MLflow helps in tracking experiments, packaging code into reproducible runs, and sharing and deploying models. You can find more information about MLflow. We have used MLflow to track the experiments and save parameters and metrics used for a particular training. We can include or change parameters according to our requirements
**Tracked Parameters and Metrics:**
- Epochs
- Accuracy
- Loss

##### 3.1 Access the MLflow UI in your browser after running you script:
Run  the below command
```sh
    mlflow ui
```
It will host you on the local computer. compare model seeing metrics


##### 3.2 Unmanaged without MLflow CLI
Run the standard main function from the command-line.
 ```sh
python "filename".py <parameter1>
```

##### 3.3 MLflow CLI - mlflow run
Use the MLproject file. We get more control over an MLflow Project by adding an MLproject file, which is a text file in YAML syntax, to the project’s root directory.

- mlflow run local
 ```sh
mlflow run "filename" -P <parameter1>=<value>
```
- mlflow run github
 ```sh
mlflow run https://github.com/<usernale>/<filename>.git -P <parameter1>=<value>
```

 
