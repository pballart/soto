//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IoTAnalytics {
    // MARK: Async API Calls

    /// Sends messages to a channel.
    public func batchPutMessage(_ input: BatchPutMessageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchPutMessageResponse {
        return try await self.client.execute(operation: "BatchPutMessage", path: "/messages/batch", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the reprocessing of data through the pipeline.
    public func cancelPipelineReprocessing(_ input: CancelPipelineReprocessingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelPipelineReprocessingResponse {
        return try await self.client.execute(operation: "CancelPipelineReprocessing", path: "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to create a channel. A channel collects data from an MQTT topic and archives the raw, unprocessed messages before publishing the data to a pipeline.
    public func createChannel(_ input: CreateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelResponse {
        return try await self.client.execute(operation: "CreateChannel", path: "/channels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to create a dataset. A dataset stores data retrieved from a data store by applying a queryAction (a SQL query) or a containerAction (executing a containerized application). This operation creates the skeleton of a dataset. The dataset can be populated manually by calling CreateDatasetContent or automatically according to a trigger you specify.
    public func createDataset(_ input: CreateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatasetResponse {
        return try await self.client.execute(operation: "CreateDataset", path: "/datasets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the content of a dataset by applying a queryAction (a SQL query) or a containerAction (executing a containerized application).
    public func createDatasetContent(_ input: CreateDatasetContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatasetContentResponse {
        return try await self.client.execute(operation: "CreateDatasetContent", path: "/datasets/{datasetName}/content", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a data store, which is a repository for messages.
    public func createDatastore(_ input: CreateDatastoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatastoreResponse {
        return try await self.client.execute(operation: "CreateDatastore", path: "/datastores", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a pipeline. A pipeline consumes messages from a channel and allows you to process the messages before storing them in a data store. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
    public func createPipeline(_ input: CreatePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePipelineResponse {
        return try await self.client.execute(operation: "CreatePipeline", path: "/pipelines", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified channel.
    public func deleteChannel(_ input: DeleteChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteChannel", path: "/channels/{channelName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified dataset. You do not have to delete the content of the dataset before you perform this operation.
    public func deleteDataset(_ input: DeleteDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDataset", path: "/datasets/{datasetName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the content of the specified dataset.
    public func deleteDatasetContent(_ input: DeleteDatasetContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDatasetContent", path: "/datasets/{datasetName}/content", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified data store.
    public func deleteDatastore(_ input: DeleteDatastoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDatastore", path: "/datastores/{datastoreName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified pipeline.
    public func deletePipeline(_ input: DeletePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeletePipeline", path: "/pipelines/{pipelineName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a channel.
    public func describeChannel(_ input: DescribeChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelResponse {
        return try await self.client.execute(operation: "DescribeChannel", path: "/channels/{channelName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a dataset.
    public func describeDataset(_ input: DescribeDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasetResponse {
        return try await self.client.execute(operation: "DescribeDataset", path: "/datasets/{datasetName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a data store.
    public func describeDatastore(_ input: DescribeDatastoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatastoreResponse {
        return try await self.client.execute(operation: "DescribeDatastore", path: "/datastores/{datastoreName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the current settings of the IoT Analytics logging options.
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoggingOptionsResponse {
        return try await self.client.execute(operation: "DescribeLoggingOptions", path: "/logging", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a pipeline.
    public func describePipeline(_ input: DescribePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePipelineResponse {
        return try await self.client.execute(operation: "DescribePipeline", path: "/pipelines/{pipelineName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the contents of a dataset as presigned URIs.
    public func getDatasetContent(_ input: GetDatasetContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatasetContentResponse {
        return try await self.client.execute(operation: "GetDatasetContent", path: "/datasets/{datasetName}/content", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of channels.
    public func listChannels(_ input: ListChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListChannelsResponse {
        return try await self.client.execute(operation: "ListChannels", path: "/channels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists information about dataset contents that have been created.
    public func listDatasetContents(_ input: ListDatasetContentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatasetContentsResponse {
        return try await self.client.execute(operation: "ListDatasetContents", path: "/datasets/{datasetName}/contents", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about datasets.
    public func listDatasets(_ input: ListDatasetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatasetsResponse {
        return try await self.client.execute(operation: "ListDatasets", path: "/datasets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of data stores.
    public func listDatastores(_ input: ListDatastoresRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatastoresResponse {
        return try await self.client.execute(operation: "ListDatastores", path: "/datastores", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of pipelines.
    public func listPipelines(_ input: ListPipelinesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPipelinesResponse {
        return try await self.client.execute(operation: "ListPipelines", path: "/pipelines", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags (metadata) that you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets or updates the IoT Analytics logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.
    public func putLoggingOptions(_ input: PutLoggingOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PutLoggingOptions", path: "/logging", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Simulates the results of running a pipeline activity on a message payload.
    public func runPipelineActivity(_ input: RunPipelineActivityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunPipelineActivityResponse {
        return try await self.client.execute(operation: "RunPipelineActivity", path: "/pipelineactivities/run", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a sample of messages from the specified channel ingested during the specified timeframe. Up to 10 messages can be retrieved.
    public func sampleChannelData(_ input: SampleChannelDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SampleChannelDataResponse {
        return try await self.client.execute(operation: "SampleChannelData", path: "/channels/{channelName}/sample", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the reprocessing of raw message data through the pipeline.
    public func startPipelineReprocessing(_ input: StartPipelineReprocessingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartPipelineReprocessingResponse {
        return try await self.client.execute(operation: "StartPipelineReprocessing", path: "/pipelines/{pipelineName}/reprocessing", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the given tags (metadata) from the resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to update the settings of a channel.
    public func updateChannel(_ input: UpdateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateChannel", path: "/channels/{channelName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the settings of a dataset.
    public func updateDataset(_ input: UpdateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateDataset", path: "/datasets/{datasetName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to update the settings of a data store.
    public func updateDatastore(_ input: UpdateDatastoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateDatastore", path: "/datastores/{datastoreName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the settings of a pipeline. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
    public func updatePipeline(_ input: UpdatePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdatePipeline", path: "/pipelines/{pipelineName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
