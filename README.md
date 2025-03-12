# 🛠️ Simple Data Transformation with Python & Docker

## 📌 Project Overview

This project demonstrates a simple **data transformation pipeline** using Python and Pandas, running inside a **Docker container**. The script reads a CSV file, modifies the data (increments age by 2 years), and saves the transformed data into a new CSV file.

## 📂 Project Structure

```
 data-transform-docker/
 ├── Dockerfile
 ├── transform.py
 ├── input.csv
 ├── output.csv (generated after execution)
 ├── requirements.txt
 └── README.md
```

## 🚀 Getting Started

### 1️⃣ Clone the Repository

```sh
git clone https://github.com/safacanmetin/data-transform-docker.git
cd data-transform-docker
```

### 2️⃣ Prepare the Environment

Ensure you have **Docker installed** on your system.

### 3️⃣ Build the Docker Image

```sh
docker build -t data-transform .
```

This command creates a Docker image named `data-transform` based on the `Dockerfile`.

### 4️⃣ Run the Container

```sh
docker run --rm -v "$(pwd):/app" data-transform
```

- `--rm`: Removes the container after execution.
- `-v "$(pwd):/app"`: Mounts the local directory inside the container to persist input and output files.

### 5️⃣ Check the Transformed Data

After execution, you'll find a new file `output.csv` in the project folder:

```csv
id,name,age
1,Eugenie,19
2,Alethea,55
3,Kalli,41
4,Coleman,71
...
```

## 📝 Explanation

- `transform.py` reads `input.csv`, increases the `age` by **2 years**, and saves it to `output.csv`.
- The `Dockerfile` ensures the required dependencies (`pandas`) are installed and the script runs inside the container.

## 🔧 Customization

To modify the transformation logic, edit transform.py. Example: change the age increment logic, sort the data by name or age, or separate names with two words into a different column.

## 📜 License

This project is licensed under the **MIT License**.

## 🤝 Contributing

Feel free to submit issues or pull requests to improve the project.

## 📧 Contact

For any questions or suggestions, reach out to me at [safacanmetin@gmail.com](mailto\:safacanmetin@gmail.com).

