helm upgrade --install opw \
	-f values.yaml \
	--set datadog.apiKey=XX \
	--set datadog.pipelineId=YY \
	--set env[0].name=DD_OP_SOURCE_DATADOG_AGENT_ADDRESS,env[0].value='0.0.0.0:8282' \
	--set service.ports[0].name=dd-op-source-datadog-agent-address-port,service.ports[0].protocol=TCP,service.ports[0].port=8282,service.ports[0].targetPort=8282 \
	datadog/observability-pipelines-worker