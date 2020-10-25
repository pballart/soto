//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/*
 Client object for interacting with AWS MediaTailor service.

 Use the AWS Elemental MediaTailor SDK to configure scalable ad insertion for your live and VOD content. With AWS Elemental MediaTailor, you can serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the AWS Elemental MediaTailor User Guide.Through the SDK, you manage AWS Elemental MediaTailor configurations the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).
 */
public struct MediaTailor: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaTailor client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "api.mediatailor",
            signingName: "mediatailor",
            serviceProtocol: .restjson,
            apiVersion: "2018-04-23",
            endpoint: endpoint,
            errorType: MediaTailorErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Deletes the playback configuration for the specified name.
    public func deletePlaybackConfiguration(_ input: DeletePlaybackConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeletePlaybackConfigurationResponse> {
        return self.client.execute(operation: "DeletePlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the playback configuration for the specified name.
    public func getPlaybackConfiguration(_ input: GetPlaybackConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetPlaybackConfigurationResponse> {
        return self.client.execute(operation: "GetPlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful.
    public func listPlaybackConfigurations(_ input: ListPlaybackConfigurationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPlaybackConfigurationsResponse> {
        return self.client.execute(operation: "ListPlaybackConfigurations", path: "/playbackConfigurations", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the tags assigned to the specified playback configuration resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds a new playback configuration to AWS Elemental MediaTailor.
    public func putPlaybackConfiguration(_ input: PutPlaybackConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutPlaybackConfigurationResponse> {
        return self.client.execute(operation: "PutPlaybackConfiguration", path: "/playbackConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds tags to the specified playback configuration resource. You can specify one or more tags to add.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes tags from the specified playback configuration resource. You can specify one or more tags to remove.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}

extension MediaTailor {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MediaTailor, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
