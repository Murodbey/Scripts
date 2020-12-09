#!/bin/bash
sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
sudo curl -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.6.0-x86_64.rpm
sudo rpm --install elasticsearch-7.6.0-x86_64.rpm
sudo systemctl enable elasticsearch