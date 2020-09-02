#!/bin/bash

mkdir -p efi_neon_challenge/home/download_neon
mkdir -p efi_neon_challenge/home/generate_targets
mkdir -p efi_neon_challenge/home/generate_score
mkdir -p efi_neon_challenge/home/generate_null_forecast
mkdir -p efi_neon_challenge/themes/


git clone https://github.com/eco4cast/NEON-community-forecast.git efi_neon_challenge/themes/

cp efi_neon_challenge/themes/NEON-community-forecast/01* /efi_neon_challenge/home/download_neon
cp efi_neon_challenge/themes/NEON-community-forecast/02* /efi_neon_challenge/home/download_generate_targets
cp efi_neon_challenge/themes/NEON-community-forecast/03* /efi_neon_challenge/home/generate_null_forecast
cp efi_neon_challenge/themes/NEON-community-forecast/04* /efi_neon_challenge/home/generate_score

git clone https://github.com/eco4cast/ci-server 

docker-compose up -d

chmod 0644 hello-cron

crontab hello-cron

cron

