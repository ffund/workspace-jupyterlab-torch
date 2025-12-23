FROM prairielearn/workspace-jupyterlab-python

# Install CPU-only PyTorch + TorchVision
USER root

RUN pip3 install --no-cache-dir \
    torch torchvision \
    --index-url https://download.pytorch.org/whl/cpu 

RUN pip3 install --no-cache-dir grad-cam 

RUN pip3 cache purge

USER jovyan

