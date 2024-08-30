# DeepNILM
The primary focus of this work is on evaluating the effectiveness of deep learning techniques, specifically Convolutional Neural Networks (CNNs), for occupancy detection in residential buildings using smart meter data. This repository also explores the impact of different feature selection methods, including Principal Component Analysis (PCA) and SHapley Additive exPlanations (SHAP), on the performance of these models on five different types of house occupancy datasets.

## Data
The data used in this research comes from the publicly available Electricity Consumption and Occupancy (ECO) Dataset [https://vs.inf.ethz.ch/res/show.html?what=eco-data]. It includes electricity consumption data from six Swiss households over eight months, with ground truth occupancy data collected through a combination of manual input and PIR sensors.

## Neural Network Model
The CNN model used for occupancy classification is a deep architecture consisting of:

- Input Layer: 1-D layer with dimensions matching the number of features.
- Convolutional Layers: Three 1-D convolutional layers with output dimensions of 256, 128, and 64, using ReLU activation.
- Dense Layers: Three dense layers with dimensions 256, 64, and 32, using ReLU activation.
- Output Layer: A binary output layer with a sigmoid activation function.
- Batch normalization and dropout layers are used to improve the model's performance and prevent overfitting.

  ## Feature Selection
Two feature selection techniques are implemented and compared:

- **Principal Component Analysis (PCA)**: A feature extraction method that reduces the feature space by transforming the data into a set of linearly independent components.
- **SHAP (SHapley Additive exPlanations)**: A method based on Shapley values that ranks features according to their contribution to the model's predictions, allowing for the selection of a subset of important features.
