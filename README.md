# Пример работы с Docker и docker-machine в GCE

Создать докер-машину в GCE


    docker-machine create --driver google \
        --google-project XXX \
        --google-zone europe-west1-b \
        --google-machine-type g1-small \
        --google-machine-image $(gcloud compute images list --filter ubuntu-1604-lts --uri) \
        docker-host

Собрать образ


    docker build -t reddit:latest .

Запустить приложение в докер-машине


    eval $(docker-machine env docker-host)
    docker run --name reddit -d --network=host reddit:latest
