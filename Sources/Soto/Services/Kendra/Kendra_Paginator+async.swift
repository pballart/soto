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
extension Kendra {
    ///  Gets statistics about synchronizing Amazon Kendra with a data source.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataSourceSyncJobsPaginator(
        _ input: ListDataSourceSyncJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataSourceSyncJobsRequest, ListDataSourceSyncJobsResponse> {
        return .init(
            input: input,
            command: listDataSourceSyncJobs,
            inputKey: \ListDataSourceSyncJobsRequest.nextToken,
            outputKey: \ListDataSourceSyncJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the data sources that you have created.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataSourcesPaginator(
        _ input: ListDataSourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataSourcesRequest, ListDataSourcesResponse> {
        return .init(
            input: input,
            command: listDataSources,
            inputKey: \ListDataSourcesRequest.nextToken,
            outputKey: \ListDataSourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists specific permissions of users and groups with access to your Amazon Kendra experience.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEntityPersonasPaginator(
        _ input: ListEntityPersonasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEntityPersonasRequest, ListEntityPersonasResponse> {
        return .init(
            input: input,
            command: listEntityPersonas,
            inputKey: \ListEntityPersonasRequest.nextToken,
            outputKey: \ListEntityPersonasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists users or groups in your Amazon Web Services SSO identity source that are granted access to your Amazon Kendra experience. You can create an Amazon Kendra experience such as a search application. For more information on creating a search application experience, see Building a search experience with no code.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listExperienceEntitiesPaginator(
        _ input: ListExperienceEntitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListExperienceEntitiesRequest, ListExperienceEntitiesResponse> {
        return .init(
            input: input,
            command: listExperienceEntities,
            inputKey: \ListExperienceEntitiesRequest.nextToken,
            outputKey: \ListExperienceEntitiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists one or more Amazon Kendra experiences. You can create an Amazon Kendra experience such as a search application. For more information on creating a search application experience, see Building a search experience with no code.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listExperiencesPaginator(
        _ input: ListExperiencesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListExperiencesRequest, ListExperiencesResponse> {
        return .init(
            input: input,
            command: listExperiences,
            inputKey: \ListExperiencesRequest.nextToken,
            outputKey: \ListExperiencesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the Amazon Kendra indexes that you have created.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIndicesPaginator(
        _ input: ListIndicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIndicesRequest, ListIndicesResponse> {
        return .init(
            input: input,
            command: listIndices,
            inputKey: \ListIndicesRequest.nextToken,
            outputKey: \ListIndicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
