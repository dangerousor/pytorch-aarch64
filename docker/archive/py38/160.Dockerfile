FROM python:3.8-slim

ENV DEBIAN_FRONTEND=noninteractive
# tzdata

RUN set -xe \
        \
        && apt update \
        && apt install -y bash ca-certificates libffi-dev libssl-dev xz-utils zlib1g-dev liblzma-dev libjpeg-dev libpng-dev sox libsox-dev \
        && rm -rf /var/lib/apt/lists/*

RUN set -xe \
        \
        && python3.8 -m pip install -U pip setuptools wheel \
        && python3.8 -m pip install -U torch==1.6.0 torchvision==0.7.0 torchaudio==0.6.0 torchtext==0.7.0 -f https://torch.maku.ml/whl/stable.html \
        && rm -rf /root/.cache/*

CMD ["python3"]
