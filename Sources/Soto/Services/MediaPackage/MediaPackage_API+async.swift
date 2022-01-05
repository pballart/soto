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
extension MediaPackage {
    // MARK: Async API Calls

    /// Changes the Channel's properities to configure log subscription
    public func configureLogs(_ input: ConfigureLogsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfigureLogsResponse {
        return try await self.client.execute(operation: "ConfigureLogs", path: "/channels/{id}/configure_logs", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Channel.
    public func createChannel(_ input: CreateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelResponse {
        return try await self.client.execute(operation: "CreateChannel", path: "/channels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new HarvestJob record.
    public func createHarvestJob(_ input: CreateHarvestJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHarvestJobResponse {
        return try await self.client.execute(operation: "CreateHarvestJob", path: "/harvest_jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new OriginEndpoint record.
    public func createOriginEndpoint(_ input: CreateOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOriginEndpointResponse {
        return try await self.client.execute(operation: "CreateOriginEndpoint", path: "/origin_endpoints", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing Channel.
    public func deleteChannel(_ input: DeleteChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteChannelResponse {
        return try await self.client.execute(operation: "DeleteChannel", path: "/channels/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing OriginEndpoint.
    public func deleteOriginEndpoint(_ input: DeleteOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOriginEndpointResponse {
        return try await self.client.execute(operation: "DeleteOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a Channel.
    public func describeChannel(_ input: DescribeChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelResponse {
        return try await self.client.execute(operation: "DescribeChannel", path: "/channels/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about an existing HarvestJob.
    public func describeHarvestJob(_ input: DescribeHarvestJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHarvestJobResponse {
        return try await self.client.execute(operation: "DescribeHarvestJob", path: "/harvest_jobs/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about an existing OriginEndpoint.
    public func describeOriginEndpoint(_ input: DescribeOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginEndpointResponse {
        return try await self.client.execute(operation: "DescribeOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of Channels.
    public func listChannels(_ input: ListChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListChannelsResponse {
        return try await self.client.execute(operation: "ListChannels", path: "/channels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of HarvestJob records.
    public func listHarvestJobs(_ input: ListHarvestJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListHarvestJobsResponse {
        return try await self.client.execute(operation: "ListHarvestJobs", path: "/harvest_jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of OriginEndpoint records.
    public func listOriginEndpoints(_ input: ListOriginEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOriginEndpointsResponse {
        return try await self.client.execute(operation: "ListOriginEndpoints", path: "/origin_endpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    @available(*, deprecated, message: "This API is deprecated. Please use RotateIngestEndpointCredentials instead")
    public func rotateChannelCredentials(_ input: RotateChannelCredentialsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RotateChannelCredentialsResponse {
        return try await self.client.execute(operation: "RotateChannelCredentials", path: "/channels/{id}/credentials", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    public func rotateIngestEndpointCredentials(_ input: RotateIngestEndpointCredentialsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RotateIngestEndpointCredentialsResponse {
        return try await self.client.execute(operation: "RotateIngestEndpointCredentials", path: "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Channel.
    public func updateChannel(_ input: UpdateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateChannelResponse {
        return try await self.client.execute(operation: "UpdateChannel", path: "/channels/{id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing OriginEndpoint.
    public func updateOriginEndpoint(_ input: UpdateOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOriginEndpointResponse {
        return try await self.client.execute(operation: "UpdateOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
