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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension ElasticTranscoder {
    ///  The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline. Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains  one element for each job that satisfies the search criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJobsByPipelinePaginator(
        _ input: ListJobsByPipelineRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJobsByPipelineRequest, ListJobsByPipelineResponse> {
        return .init(
            input: input,
            command: listJobsByPipeline,
            inputKey: \ListJobsByPipelineRequest.pageToken,
            outputKey: \ListJobsByPipelineResponse.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  The ListJobsByStatus operation gets a list of jobs that have a specified status. The response  body contains one element for each job that satisfies the search criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJobsByStatusPaginator(
        _ input: ListJobsByStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJobsByStatusRequest, ListJobsByStatusResponse> {
        return .init(
            input: input,
            command: listJobsByStatus,
            inputKey: \ListJobsByStatusRequest.pageToken,
            outputKey: \ListJobsByStatusResponse.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPipelinesPaginator(
        _ input: ListPipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPipelinesRequest, ListPipelinesResponse> {
        return .init(
            input: input,
            command: listPipelines,
            inputKey: \ListPipelinesRequest.pageToken,
            outputKey: \ListPipelinesResponse.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that  you've added in an AWS region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPresetsPaginator(
        _ input: ListPresetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPresetsRequest, ListPresetsResponse> {
        return .init(
            input: input,
            command: listPresets,
            inputKey: \ListPresetsRequest.pageToken,
            outputKey: \ListPresetsResponse.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
