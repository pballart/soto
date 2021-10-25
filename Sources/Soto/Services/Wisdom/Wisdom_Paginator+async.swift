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
extension Wisdom {
    ///  Lists information about assistant associations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssistantAssociationsPaginator(
        _ input: ListAssistantAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssistantAssociationsRequest, ListAssistantAssociationsResponse> {
        return .init(
            input: input,
            command: listAssistantAssociations,
            inputKey: \ListAssistantAssociationsRequest.nextToken,
            outputKey: \ListAssistantAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists information about assistants.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssistantsPaginator(
        _ input: ListAssistantsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssistantsRequest, ListAssistantsResponse> {
        return .init(
            input: input,
            command: listAssistants,
            inputKey: \ListAssistantsRequest.nextToken,
            outputKey: \ListAssistantsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the content.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContentsPaginator(
        _ input: ListContentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContentsRequest, ListContentsResponse> {
        return .init(
            input: input,
            command: listContents,
            inputKey: \ListContentsRequest.nextToken,
            outputKey: \ListContentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the knowledge bases.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listKnowledgeBasesPaginator(
        _ input: ListKnowledgeBasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListKnowledgeBasesRequest, ListKnowledgeBasesResponse> {
        return .init(
            input: input,
            command: listKnowledgeBases,
            inputKey: \ListKnowledgeBasesRequest.nextToken,
            outputKey: \ListKnowledgeBasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Performs a manual search against the specified assistant. To retrieve recommendations for an assistant, use GetRecommendations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func queryAssistantPaginator(
        _ input: QueryAssistantRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<QueryAssistantRequest, QueryAssistantResponse> {
        return .init(
            input: input,
            command: queryAssistant,
            inputKey: \QueryAssistantRequest.nextToken,
            outputKey: \QueryAssistantResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for content in a specified knowledge base. Can be used to get a specific content resource by its name.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchContentPaginator(
        _ input: SearchContentRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchContentRequest, SearchContentResponse> {
        return .init(
            input: input,
            command: searchContent,
            inputKey: \SearchContentRequest.nextToken,
            outputKey: \SearchContentResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for sessions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchSessionsPaginator(
        _ input: SearchSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchSessionsRequest, SearchSessionsResponse> {
        return .init(
            input: input,
            command: searchSessions,
            inputKey: \SearchSessionsRequest.nextToken,
            outputKey: \SearchSessionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
