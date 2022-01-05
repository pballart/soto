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

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SSM {
    public func waitUntilCommandExecuted(
        _ input: GetCommandInvocationRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .retry, matcher: try! JMESPathMatcher("status", expected: "Pending")),
                .init(state: .retry, matcher: try! JMESPathMatcher("status", expected: "InProgress")),
                .init(state: .retry, matcher: try! JMESPathMatcher("status", expected: "Delayed")),
                .init(state: .success, matcher: try! JMESPathMatcher("status", expected: "Success")),
                .init(state: .failure, matcher: try! JMESPathMatcher("status", expected: "Cancelled")),
                .init(state: .failure, matcher: try! JMESPathMatcher("status", expected: "TimedOut")),
                .init(state: .failure, matcher: try! JMESPathMatcher("status", expected: "Failed")),
                .init(state: .failure, matcher: try! JMESPathMatcher("status", expected: "Cancelling")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvocationDoesNotExist")),
            ],
            minDelayTime: .seconds(5),
            command: getCommandInvocation
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
