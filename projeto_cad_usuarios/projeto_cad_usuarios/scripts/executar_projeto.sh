#!/bin/bash

#!/bin/bash
echo "Iniciando o projeto..."
python manage.py migrate
echo "Migrações aplicadas."
python manage.py runserver

