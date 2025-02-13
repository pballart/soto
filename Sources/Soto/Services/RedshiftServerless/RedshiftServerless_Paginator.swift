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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension RedshiftServerless {
    ///  Returns an array of EndpointAccess objects and relevant information.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEndpointAccessPaginator<Result>(
        _ input: ListEndpointAccessRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEndpointAccessResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEndpointAccess,
            inputKey: \ListEndpointAccessRequest.nextToken,
            outputKey: \ListEndpointAccessResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEndpointAccessPaginator(
        _ input: ListEndpointAccessRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEndpointAccessResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEndpointAccess,
            inputKey: \ListEndpointAccessRequest.nextToken,
            outputKey: \ListEndpointAccessResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about a list of specified namespaces.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listNamespacesPaginator<Result>(
        _ input: ListNamespacesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListNamespacesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listNamespaces,
            inputKey: \ListNamespacesRequest.nextToken,
            outputKey: \ListNamespacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listNamespacesPaginator(
        _ input: ListNamespacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListNamespacesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNamespaces,
            inputKey: \ListNamespacesRequest.nextToken,
            outputKey: \ListNamespacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of recovery points.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRecoveryPointsPaginator<Result>(
        _ input: ListRecoveryPointsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRecoveryPointsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRecoveryPoints,
            inputKey: \ListRecoveryPointsRequest.nextToken,
            outputKey: \ListRecoveryPointsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRecoveryPointsPaginator(
        _ input: ListRecoveryPointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRecoveryPointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRecoveryPoints,
            inputKey: \ListRecoveryPointsRequest.nextToken,
            outputKey: \ListRecoveryPointsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of snapshots.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSnapshotsPaginator<Result>(
        _ input: ListSnapshotsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSnapshotsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSnapshots,
            inputKey: \ListSnapshotsRequest.nextToken,
            outputKey: \ListSnapshotsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSnapshotsPaginator(
        _ input: ListSnapshotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSnapshotsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSnapshots,
            inputKey: \ListSnapshotsRequest.nextToken,
            outputKey: \ListSnapshotsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all usage limits within Amazon Redshift Serverless.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listUsageLimitsPaginator<Result>(
        _ input: ListUsageLimitsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListUsageLimitsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listUsageLimits,
            inputKey: \ListUsageLimitsRequest.nextToken,
            outputKey: \ListUsageLimitsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listUsageLimitsPaginator(
        _ input: ListUsageLimitsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListUsageLimitsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listUsageLimits,
            inputKey: \ListUsageLimitsRequest.nextToken,
            outputKey: \ListUsageLimitsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about a list of specified workgroups.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listWorkgroupsPaginator<Result>(
        _ input: ListWorkgroupsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWorkgroupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWorkgroups,
            inputKey: \ListWorkgroupsRequest.nextToken,
            outputKey: \ListWorkgroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listWorkgroupsPaginator(
        _ input: ListWorkgroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWorkgroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorkgroups,
            inputKey: \ListWorkgroupsRequest.nextToken,
            outputKey: \ListWorkgroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension RedshiftServerless.ListEndpointAccessRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftServerless.ListEndpointAccessRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            vpcId: self.vpcId,
            workgroupName: self.workgroupName
        )
    }
}

extension RedshiftServerless.ListNamespacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftServerless.ListNamespacesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RedshiftServerless.ListRecoveryPointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftServerless.ListRecoveryPointsRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            namespaceName: self.namespaceName,
            nextToken: token,
            startTime: self.startTime
        )
    }
}

extension RedshiftServerless.ListSnapshotsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftServerless.ListSnapshotsRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            namespaceArn: self.namespaceArn,
            namespaceName: self.namespaceName,
            nextToken: token,
            ownerAccount: self.ownerAccount,
            startTime: self.startTime
        )
    }
}

extension RedshiftServerless.ListUsageLimitsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftServerless.ListUsageLimitsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn,
            usageType: self.usageType
        )
    }
}

extension RedshiftServerless.ListWorkgroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftServerless.ListWorkgroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
