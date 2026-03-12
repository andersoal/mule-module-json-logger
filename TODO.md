- Validate `repositories` and `distributionManagement` sections with the `.m2/settings.xml` file. `id` must be the same.
- Configure the connected app credentials in the `settings.xml` file.
- Ensure Nexus Credentials are set in the `settings.xml` file and correctly configured.
- Change `groupId` in `pom.xml` if you want to deploy to a different Exchange organization.
- Execute command `mvn -f json-logger/pom.xml clean deploy`.

- `mvn -f json-logger/pom.xml clean package`

JDK8





ERROR 2025-11-20 20:50:31,415 [[MuleRuntime].uber.04: [premierpet-job-pricing].error.handler-batch-control/1/processors/0.ps.BLOCKING @40ff3ee1] [processor: error.handler-batch-control/1/processors/0; event: a82a7340-c66b-11f0-823a-bc38980f547f] org.mule.runtime.core.privileged.exception.DefaultExceptionListener: 
********************************************************************************
Message               : Java 8 optional type `java.util.Optional<java.lang.String>` not supported by default: add Module "com.fasterxml.jackson.datatype:jackson-datatype-jdk8" to enable handling (through reference chain: org.mule.extension.jsonlogger.api.pojos.LoggerProcessor["content"]->org.mule.runtime.module.extension.internal.runtime.resolver.ParameterResolverValueResolverWrapper$1["expression"])
Element               : error.handler-batch-control/1/processors/0 @ premierpet-job-pricing:error.xml:151 (ERROR EXCEPTION)
Element DSL           : <json-logger:logger doc:name="ERROR EXCEPTION" doc:id="94168b9e-0bfe-48ac-91c9-dd61f3c38dab" config-ref="JSON_Logger_Config" message="#[((error.errorType.namespace default '') ++ ':' ++ (error.errorType.identifier default ''))]" tracePoint="EXCEPTION" priority="ERROR">
<json-logger:content><![CDATA[#[${file::dw/p_json_LoggerContentError.dwl}]]]></json-logger:content>
</json-logger:logger>
Error type            : MULE:UNKNOWN
FlowStack             : at pricing-condition-stage-post.discounts-query-datasul-count(error.handler-batch-control/1/processors/0 @ premierpet-job-pricing:error.xml:151 (ERROR EXCEPTION))
at pricing-condition-stage-post.discounts(pricing-condition-stage-post.discounts/processors/2 @ premierpet-job-pricing:pricing-condition-stage/impl-pricing-condition-stage-post.xml:169 (FlowRef Discounts Query Datasul Count))
at scheduler.pricing-condition-stage-discounts(scheduler.pricing-condition-stage-discounts/processors/3/route/0/processors/0 @ premierpet-job-pricing:scheduler.xml:199 (FlowRef pricing-condition-stage.discounts))
--------------------------------------------------------------------------------
Root Exception stack trace:
com.fasterxml.jackson.databind.exc.InvalidDefinitionException: Java 8 optional type `java.util.Optional<java.lang.String>` not supported by default: add Module "com.fasterxml.jackson.datatype:jackson-datatype-jdk8" to enable handling (through reference chain: org.mule.extension.jsonlogger.api.pojos.LoggerProcessor["content"]->org.mule.runtime.module.extension.internal.runtime.resolver.ParameterResolverValueResolverWrapper$1["expression"])
	at com.fasterxml.jackson.databind.exc.InvalidDefinitionException.from(InvalidDefinitionException.java:77)
	at com.fasterxml.jackson.databind.SerializerProvider.reportBadDefinition(SerializerProvider.java:1330)
	at com.fasterxml.jackson.databind.ser.impl.UnsupportedTypeSerializer.serialize(UnsupportedTypeSerializer.java:35)
	at com.fasterxml.jackson.databind.ser.BeanPropertyWriter.serializeAsField(BeanPropertyWriter.java:732)
	at com.fasterxml.jackson.databind.ser.std.BeanSerializerBase.serializeFields(BeanSerializerBase.java:770)
	at com.fasterxml.jackson.databind.ser.BeanSerializer.serialize(BeanSerializer.java:183)
	at com.fasterxml.jackson.databind.ser.BeanPropertyWriter.serializeAsField(BeanPropertyWriter.java:732)
	at com.fasterxml.jackson.databind.ser.std.BeanSerializerBase.serializeFields(BeanSerializerBase.java:770)
	at com.fasterxml.jackson.databind.ser.BeanSerializer.serialize(BeanSerializer.java:183)
	at com.fasterxml.jackson.databind.ser.DefaultSerializerProvider._serialize(DefaultSerializerProvider.java:502)
	at com.fasterxml.jackson.databind.ser.DefaultSerializerProvider.serializeValue(DefaultSerializerProvider.java:341)
	at com.fasterxml.jackson.databind.ObjectMapper.valueToTree(ObjectMapper.java:3608)
	at org.mule.extension.jsonlogger.internal.JsonloggerOperations.logger(JsonloggerOperations.java:190)
	at org.mule.extension.jsonlogger.internal.JsonloggerOperations$logger$MethodComponentExecutor_premierpet_job_pricing.execute(Unknown Source)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.execution.GeneratedMethodComponentExecutor.execute(GeneratedMethodComponentExecutor.java:94)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.execution.NonBlockingCompletableMethodOperationExecutor.doExecute(NonBlockingCompletableMethodOperationExecutor.java:36)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.execution.AbstractCompletableMethodOperationExecutor.execute(AbstractCompletableMethodOperationExecutor.java:61)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.DefaultExecutionMediator.executeCommand(DefaultExecutionMediator.java:268)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.DefaultExecutionMediator.executeWithInterceptors(DefaultExecutionMediator.java:251)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.DefaultExecutionMediator.lambda$doExecute$2(DefaultExecutionMediator.java:158)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.DefaultExecutionMediator.lambda$new$0(DefaultExecutionMediator.java:80)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.DefaultExecutionMediator.withExecutionTemplate(DefaultExecutionMediator.java:349)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.DefaultExecutionMediator.doExecute(DefaultExecutionMediator.java:157)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.DefaultExecutionMediator.execute(DefaultExecutionMediator.java:149)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.ComponentMessageProcessor.executeOperation(ComponentMessageProcessor.java:590)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.ComponentMessageProcessor.prepareAndExecuteOperation(ComponentMessageProcessor.java:840)
	at org.mule.runtime.extensions.support@4.9.10/org.mule.runtime.module.extension.internal.runtime.operation.ComponentMessageProcessor$4.lambda$innerEventDispatcher$6(ComponentMessageProcessor.java:697)
	at reactor.core.* (6 elements filtered from stack; set debug level logging or '-Dmule.verbose.exceptions=true' for everything)(Unknown Source)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
	at org.mule.service.scheduler@1.9.10/org.mule.service.scheduler.internal.AbstractRunnableFutureDecorator.doRun(AbstractRunnableFutureDecorator.java:180)
	at org.mule.service.scheduler@1.9.10/org.mule.service.scheduler.internal.RunnableFutureDecorator.run(RunnableFutureDecorator.java:56)
	at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
	at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
	at java.base/java.lang.Thread.run(Thread.java:840)

********************************************************************************