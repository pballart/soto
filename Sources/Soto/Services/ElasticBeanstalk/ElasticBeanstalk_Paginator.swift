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

extension ElasticBeanstalk {
    ///  Lists an environment's completed and failed managed actions.
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
    public func describeEnvironmentManagedActionHistoryPaginator<Result>(
        _ input: DescribeEnvironmentManagedActionHistoryRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeEnvironmentManagedActionHistoryResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeEnvironmentManagedActionHistory,
            inputKey: \DescribeEnvironmentManagedActionHistoryRequest.nextToken,
            outputKey: \DescribeEnvironmentManagedActionHistoryResult.nextToken,
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
    public func describeEnvironmentManagedActionHistoryPaginator(
        _ input: DescribeEnvironmentManagedActionHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeEnvironmentManagedActionHistoryResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEnvironmentManagedActionHistory,
            inputKey: \DescribeEnvironmentManagedActionHistoryRequest.nextToken,
            outputKey: \DescribeEnvironmentManagedActionHistoryResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken.
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
    public func describeEventsPaginator<Result>(
        _ input: DescribeEventsMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, EventDescriptionsMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeEvents,
            inputKey: \DescribeEventsMessage.nextToken,
            outputKey: \EventDescriptionsMessage.nextToken,
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
    public func describeEventsPaginator(
        _ input: DescribeEventsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (EventDescriptionsMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEvents,
            inputKey: \DescribeEventsMessage.nextToken,
            outputKey: \EventDescriptionsMessage.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the platform branches available for your account in an AWS Region. Provides summary information about each platform branch. For definitions of platform branch and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.
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
    public func listPlatformBranchesPaginator<Result>(
        _ input: ListPlatformBranchesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPlatformBranchesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPlatformBranches,
            inputKey: \ListPlatformBranchesRequest.nextToken,
            outputKey: \ListPlatformBranchesResult.nextToken,
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
    public func listPlatformBranchesPaginator(
        _ input: ListPlatformBranchesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPlatformBranchesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPlatformBranches,
            inputKey: \ListPlatformBranchesRequest.nextToken,
            outputKey: \ListPlatformBranchesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the platform versions available for your account in an AWS Region. Provides summary information about each platform version. Compare to DescribePlatformVersion, which provides full details about a single platform version. For definitions of platform version and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.
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
    public func listPlatformVersionsPaginator<Result>(
        _ input: ListPlatformVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPlatformVersionsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPlatformVersions,
            inputKey: \ListPlatformVersionsRequest.nextToken,
            outputKey: \ListPlatformVersionsResult.nextToken,
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
    public func listPlatformVersionsPaginator(
        _ input: ListPlatformVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPlatformVersionsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPlatformVersions,
            inputKey: \ListPlatformVersionsRequest.nextToken,
            outputKey: \ListPlatformVersionsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ElasticBeanstalk.DescribeEnvironmentManagedActionHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticBeanstalk.DescribeEnvironmentManagedActionHistoryRequest {
        return .init(
            environmentId: self.environmentId,
            environmentName: self.environmentName,
            maxItems: self.maxItems,
            nextToken: token
        )
    }
}

extension ElasticBeanstalk.DescribeEventsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticBeanstalk.DescribeEventsMessage {
        return .init(
            applicationName: self.applicationName,
            endTime: self.endTime,
            environmentId: self.environmentId,
            environmentName: self.environmentName,
            maxRecords: self.maxRecords,
            nextToken: token,
            platformArn: self.platformArn,
            requestId: self.requestId,
            severity: self.severity,
            startTime: self.startTime,
            templateName: self.templateName,
            versionLabel: self.versionLabel
        )
    }
}

extension ElasticBeanstalk.ListPlatformBranchesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticBeanstalk.ListPlatformBranchesRequest {
        return .init(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}

extension ElasticBeanstalk.ListPlatformVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticBeanstalk.ListPlatformVersionsRequest {
        return .init(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}
