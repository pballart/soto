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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CodeGuruReviewer {
    public func waitUntilCodeReviewCompleted(
        _ input: DescribeCodeReviewRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("codeReview.state", expected: "Completed")),
                .init(state: .failure, matcher: try! JMESPathMatcher("codeReview.state", expected: "Failed")),
                .init(state: .retry, matcher: try! JMESPathMatcher("codeReview.state", expected: "Pending")),
            ],
            minDelayTime: .seconds(10),
            command: describeCodeReview
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilRepositoryAssociationSucceeded(
        _ input: DescribeRepositoryAssociationRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("repositoryAssociation.state", expected: "Associated")),
                .init(state: .failure, matcher: try! JMESPathMatcher("repositoryAssociation.state", expected: "Failed")),
                .init(state: .retry, matcher: try! JMESPathMatcher("repositoryAssociation.state", expected: "Associating")),
            ],
            minDelayTime: .seconds(10),
            command: describeRepositoryAssociation
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
