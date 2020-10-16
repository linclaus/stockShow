sudo docker run -d -p 9090:9090 --name=prometheus --link=grafana --link=alertmanager -v /home/linclaus/prometheus/prometheus-general-rule.yml:/etc/prometheus/prometheus-general-rule.yml -v /home/linclaus/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml linclaus/prometheus:v2.13.1
sudo docker run -d -p 3000:3000 --name=grafana --link=prometheus linclaus/grafana:7.0.3
sudo docker run -d -p 9093:9093 -v /home/linclaus/prometheus/alertmanager.yml:/etc/alertmanager/config.yml --name alertmanager linclaus/alertmanager:v0.19.4
