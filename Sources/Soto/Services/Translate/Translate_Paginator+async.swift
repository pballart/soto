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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Translate {
    ///  Provides a list of your parallel data resources in Amazon Translate.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listParallelDataPaginator(
        _ input: ListParallelDataRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListParallelDataRequest, ListParallelDataResponse> {
        return .init(
            input: input,
            command: listParallelData,
            inputKey: \ListParallelDataRequest.nextToken,
            outputKey: \ListParallelDataResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides a list of custom terminologies associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTerminologiesPaginator(
        _ input: ListTerminologiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTerminologiesRequest, ListTerminologiesResponse> {
        return .init(
            input: input,
            command: listTerminologies,
            inputKey: \ListTerminologiesRequest.nextToken,
            outputKey: \ListTerminologiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of the batch translation jobs that you have submitted.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTextTranslationJobsPaginator(
        _ input: ListTextTranslationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTextTranslationJobsRequest, ListTextTranslationJobsResponse> {
        return .init(
            input: input,
            command: listTextTranslationJobs,
            inputKey: \ListTextTranslationJobsRequest.nextToken,
            outputKey: \ListTextTranslationJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
