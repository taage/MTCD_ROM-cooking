# Introduction

This repository is intended to provide scripts to crate custom MTCD ROMs for many of those Chinese headunits you can buy on Ebay, Alibaba etc. 

# Requirements

- Linux 32bit or 64bit
- git
- some command line tools

*If you use a 64bit Linux installation you have to install 32bit libs to get the support tools running!*

e.g. on Ubuntu 16.04 LTS use this:

`apt-get install lib32ncurses5 lib32z1`

# Installation

1. install missing tool chain e.g. on Ubuntu 16.04 `apt-get install dialog wget unzip`
2. git clone https://github.com/da-anton/MTCD_ROM-cooking/
3. cd MTCD_ROM-cooking
4. download a MTCD ROM to the folder orig_image (only dupdate.img!)
5. ./mod_rom.sh
6. choose what you want
7. the final ROM is in the folder mod_image

