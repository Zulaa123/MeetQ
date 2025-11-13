#!/bin/bash
check_virtualenv() {
    if ! command -v virtualenv &> /dev/null; then
        echo "virtualenv is not installed. Installing..."
        python -m pip install --user virtualenv
        echo "virtualenv installation complete."
    fi
}
python -m venv venv
    source "OneOnOne/venv/bin/activate"
    pip3 install -U pip

python -m pip install --upgrade pip
python -m pip install --upgrade Pillow
python -m pip install django
python -m pip install djangorestframework
python -m pip install djangorestframework-simplejwt

python ./OneOnOne/manage.py makemigrations
python ./OneOnOne/manage.py migrate
