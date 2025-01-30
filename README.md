
# Deep Learning Project for Emotion Detection with Docker, Jenkins, and MLflow

This repository contains a deep learning-based **Emotion Detection** project using a **Convolutional Neural Network (CNN)**. 
The model classifies facial expressions into different emotion categories (e.g., happy, sad, angry) using the **Facial Expression Recognition** dataset. 
The project is containerized with **Docker**, has a **Jenkins pipeline** for continuous integration and deployment (CI/CD), and integrates **MLflow** for experiment tracking.

## Project Structure

- **Dockerfile**: Defines the environment required to run the project in a Docker container.
- **requirements.txt**: Lists all necessary Python dependencies, including TensorFlow, Keras, OpenCV, etc.
- **Jenkinsfile**: Contains the Jenkins pipeline configuration to automate the build, test, and deployment process.
- **Dl_Lab_Exam_(Shivangi_Aggarwal).ipynb**: Jupyter Notebook with the deep learning code for emotion detection from images using a CNN.
- **dl_lab_exam_(shivangi_aggarwal).py**: Python script that executes the emotion detection deep learning model.
- **README.md**: This file, which provides an overview of the project.

## Installation

### Prerequisites

- **Docker**: Ensure Docker is installed and running on your machine.
- **Jenkins**: Set up Jenkins for continuous integration.
- **Git**: Git is required to clone the repository.
- **TensorFlow/Keras**: For building the deep learning model.
- **OpenCV**: For image processing.
- **MLflow**: For tracking experiments and model management.

### Steps to Install

1. **Clone the repository**:

    ```bash
    git clone https://github.com/ShivangiAggarwal07/Dl_Lab.git
    cd Dl_Lab
    ```

2. **Install Python dependencies** from `requirements.txt`:

    ```bash
    pip install -r requirements.txt
    ```

### Steps to Run the Project Locally

1. **Build the Docker image**:

    ```bash
    docker build -t emotion_detection_project .
    ```

2. **Run the Docker container**:

    ```bash
    docker run -d --name emotion_detection_container emotion_detection_project
    ```

3. **Clean up after running**:

    ```bash
    docker rm -f emotion_detection_container
    docker rmi emotion_detection_project
    ```

## Jenkins Pipeline Setup

1. **Create a new Pipeline job** in Jenkins.
2. Under **Pipeline**, choose **Pipeline script from SCM** and configure it to use the Git repository where this **Jenkinsfile** is stored.
3. **Run the Jenkins job** to automatically:
   - Build the Docker image
   - Run the container
   - Clean up the container

## Using MLflow

### Tracking Experiments

MLflow is used to track experiments, log parameters, metrics, and models. Add the following code to your Python script to start tracking experiments with MLflow.

Example code for tracking an emotion detection model experiment:

```python
import mlflow
import mlflow.tensorflow

# Start MLflow experiment
mlflow.set_experiment("Emotion Detection Experiment")

with mlflow.start_run():
    mlflow.log_param("batch_size", batch_size)
    mlflow.log_metric("accuracy", accuracy)
    mlflow.tensorflow.log_model(model, "model")
```

### Running MLflow UI

After running your experiments, you can view the results in the MLflow UI.

To start the MLflow tracking server, run:

```bash
mlflow ui
```

You can then access the UI at:

```
http://localhost:5000
```

## Contributing

Feel free to fork the repository and submit a pull request with your changes. Contributions are welcome!
