heapster:
	# ClusterRoleBinding
	kubectl create -f \
		heapster/rbac/heapster-rbac.yaml

	# Create heapster deployment and service
	kubectl create -f \
		heapster/influxdb/heapster.yaml

influxdb:
	# Create influxdb deployment and service
	kubectl create -f \
		heapster/influxdb/influxdb.yaml

grafana:
	# Create grafana deployment and service
	kubectl create -f \
		heapster/influxdb/grafana.yaml

heapster-plugins: influxdb grafana

prometheus:
	# Create promethus dep/svc/rbac/config-map
	kubectl create -f prometheus