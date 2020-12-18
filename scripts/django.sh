#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl start django
sudo systemctl enable django
