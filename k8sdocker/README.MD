### Sample script to install DD agent on a local k8s server provided by docker.

Based on the official documentation:
- [DD Agent on K8s using the orchestrator](https://docs.datadoghq.com/containers/kubernetes/installation/?tab=datadogoperator)
- [Orchestrator options](https://github.com/DataDog/datadog-operator/blob/main/docs/configuration.v2alpha1.md): the details of the orchestrator options

The `install.sh` script installs the DD agent using the orchestrator (api-key to be set).

Options configured:
- basic custom check included
- use of an Observability Pipeline 


Folder `observabilityPipeline`: script to install an observability pipeline. The script is provided during the configuration of the pipeline.

Note that `DD_OBSERVABILITY_PIPELINES_WORKER_LOGS_URL` is set to `http://opw-observability-pipelines-worker:8282`; this is the service name for the observability pipeline worker pod.
