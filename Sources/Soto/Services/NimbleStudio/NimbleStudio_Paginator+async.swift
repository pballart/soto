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
extension NimbleStudio {
    ///  List Eula Acceptances.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEulaAcceptancesPaginator(
        _ input: ListEulaAcceptancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEulaAcceptancesRequest, ListEulaAcceptancesResponse> {
        return .init(
            input: input,
            command: listEulaAcceptances,
            inputKey: \ListEulaAcceptancesRequest.nextToken,
            outputKey: \ListEulaAcceptancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List Eulas.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEulasPaginator(
        _ input: ListEulasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEulasRequest, ListEulasResponse> {
        return .init(
            input: input,
            command: listEulas,
            inputKey: \ListEulasRequest.nextToken,
            outputKey: \ListEulasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Get all users in a given launch profile membership.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLaunchProfileMembersPaginator(
        _ input: ListLaunchProfileMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLaunchProfileMembersRequest, ListLaunchProfileMembersResponse> {
        return .init(
            input: input,
            command: listLaunchProfileMembers,
            inputKey: \ListLaunchProfileMembersRequest.nextToken,
            outputKey: \ListLaunchProfileMembersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all the launch profiles a studio.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLaunchProfilesPaginator(
        _ input: ListLaunchProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLaunchProfilesRequest, ListLaunchProfilesResponse> {
        return .init(
            input: input,
            command: listLaunchProfiles,
            inputKey: \ListLaunchProfilesRequest.nextToken,
            outputKey: \ListLaunchProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the streaming image resources available to this studio. This list will contain both images provided by Amazon Web Services, as well as streaming images that you have created in your studio.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStreamingImagesPaginator(
        _ input: ListStreamingImagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStreamingImagesRequest, ListStreamingImagesResponse> {
        return .init(
            input: input,
            command: listStreamingImages,
            inputKey: \ListStreamingImagesRequest.nextToken,
            outputKey: \ListStreamingImagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the streaming image resources in a studio.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStreamingSessionsPaginator(
        _ input: ListStreamingSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStreamingSessionsRequest, ListStreamingSessionsResponse> {
        return .init(
            input: input,
            command: listStreamingSessions,
            inputKey: \ListStreamingSessionsRequest.nextToken,
            outputKey: \ListStreamingSessionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the StudioComponents in a studio.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStudioComponentsPaginator(
        _ input: ListStudioComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStudioComponentsRequest, ListStudioComponentsResponse> {
        return .init(
            input: input,
            command: listStudioComponents,
            inputKey: \ListStudioComponentsRequest.nextToken,
            outputKey: \ListStudioComponentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Get all users in a given studio membership.   ListStudioMembers only returns admin members.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStudioMembersPaginator(
        _ input: ListStudioMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStudioMembersRequest, ListStudioMembersResponse> {
        return .init(
            input: input,
            command: listStudioMembers,
            inputKey: \ListStudioMembersRequest.nextToken,
            outputKey: \ListStudioMembersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List studios in your Amazon Web Services account in the requested Amazon Web Services Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStudiosPaginator(
        _ input: ListStudiosRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStudiosRequest, ListStudiosResponse> {
        return .init(
            input: input,
            command: listStudios,
            inputKey: \ListStudiosRequest.nextToken,
            outputKey: \ListStudiosResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
