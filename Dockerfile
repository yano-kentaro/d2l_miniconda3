FROM continuumio/miniconda3

# d2l環境作成と初期環境設定
RUN conda create -n d2l python==3.9
ENV CONDA_DEFAULT_ENV d2l
RUN echo "conda activate d2l" >> ~/.bashrc
ENV PATH /opt/conda/envs/d2l/bin:$PATH

# condaパッケージのインストール
RUN conda install pytorch==1.10.0 torchvision==0.11.1 cpuonly -c pytorch -c conda-forge -c tboyer --override-channels
RUN conda install seaborn
RUN conda install scipy
RUN conda install scikit-learn
RUN pip install -U d2l

# condaで使用するシェルの選択
RUN conda init zsh
