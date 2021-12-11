## Installation
```
git clone https://github.com/yano-kentaro/d2l_miniconda3.git
cd d2l_miniconda3
mkdir d2l-en
mkdir python
docker-compose build
docker-compose up -d
```

## How to start Jupyter notebook
1. Launch the CLI
1. Execute the command below
```
jupyter notebook --ip 0.0.0.0 --allow-root
```