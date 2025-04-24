from datadog_checks.base import AgentCheck
from datetime import datetime

class MyCustomCheckCount(AgentCheck):
	def check(self, instance):
		hour = datetime.now().hour

		# count
		self.monotonic_count("custom.metric.monotonic_count", hour,tags=["env:k8s", "metric_submission_type:monotonic_count"])

		self.event({
			"event_type" : "custom_event_monotonic_count",
			"msg_title": "Custom k8s Check event count",
			"msg_text" : "A new k8s monotonic_count from custom check",
			"alert_type": "info"
		})