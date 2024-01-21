### Prerequisites

* Windows 11(64GB)
* NVidia video card (RTX3060 12GB)
* WSL2 (32GB and operation confirmed on Ubuntu 20.04)

*Not confirmed in other configurations than those listed above.

### Installing

* Build Docker with the following command
```
docker compose build
```

## Usage

* Attach Docker
```
docker exec -it wd14-tagger-01 /bin/bash
```

* Execution wd14-tagger
```
python3 run.py --dir {input_dir} --model wd-v1-4-moat-tagger.v2 --ext .txt
```

## Version

* 2024/01/21

## Acknowledgments

* [wd14-tagger-standalone](https://github.com/corkborg/wd14-tagger-standalone)
* [nVidia 525 + Cuda 11.8 + Python 3.10 + pyTorch GPU Docker image](https://dev.to/ordigital/nvidia-525-cuda-118-python-310-pytorch-gpu-docker-image-1l4a)
