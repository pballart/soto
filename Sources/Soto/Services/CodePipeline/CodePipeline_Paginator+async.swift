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
extension CodePipeline {
    ///  Lists the action executions that have occurred in a pipeline.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listActionExecutionsPaginator(
        _ input: ListActionExecutionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListActionExecutionsInput, ListActionExecutionsOutput> {
        return .init(
            input: input,
            command: listActionExecutions,
            inputKey: \ListActionExecutionsInput.nextToken,
            outputKey: \ListActionExecutionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a summary of all AWS CodePipeline action types associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listActionTypesPaginator(
        _ input: ListActionTypesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListActionTypesInput, ListActionTypesOutput> {
        return .init(
            input: input,
            command: listActionTypes,
            inputKey: \ListActionTypesInput.nextToken,
            outputKey: \ListActionTypesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a summary of the most recent executions for a pipeline.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPipelineExecutionsPaginator(
        _ input: ListPipelineExecutionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPipelineExecutionsInput, ListPipelineExecutionsOutput> {
        return .init(
            input: input,
            command: listPipelineExecutions,
            inputKey: \ListPipelineExecutionsInput.nextToken,
            outputKey: \ListPipelineExecutionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a summary of all of the pipelines associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPipelinesPaginator(
        _ input: ListPipelinesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPipelinesInput, ListPipelinesOutput> {
        return .init(
            input: input,
            command: listPipelines,
            inputKey: \ListPipelinesInput.nextToken,
            outputKey: \ListPipelinesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the set of key-value pairs (metadata) that are used to manage the resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return .init(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceInput.nextToken,
            outputKey: \ListTagsForResourceOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a listing of all the webhooks in this AWS Region for this account. The output lists all webhooks and includes the webhook URL and ARN and the configuration for each webhook.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWebhooksPaginator(
        _ input: ListWebhooksInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWebhooksInput, ListWebhooksOutput> {
        return .init(
            input: input,
            command: listWebhooks,
            inputKey: \ListWebhooksInput.nextToken,
            outputKey: \ListWebhooksOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
