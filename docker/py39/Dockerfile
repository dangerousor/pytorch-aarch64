FROM python:3.9

RUN set -xe \
        \
        && python3.9 -m pip install -U pip setuptools wheel \
        && python3.9 -m pip install -U torch torchvision torchaudio torchtext -f https://torch.maku.ml/whl/stable.html \
        && rm -rf /root/.cache/*

CMD ["python3"]