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
extension VoiceID {
    ///  Lists all the domains in the Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDomainsRequest, ListDomainsResponse> {
        return .init(
            input: input,
            command: listDomains,
            inputKey: \ListDomainsRequest.nextToken,
            outputKey: \ListDomainsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the fraudster registration jobs in the domain with the given JobStatus. If JobStatus is not provided, this lists all fraudster registration jobs in the given domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFraudsterRegistrationJobsPaginator(
        _ input: ListFraudsterRegistrationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFraudsterRegistrationJobsRequest, ListFraudsterRegistrationJobsResponse> {
        return .init(
            input: input,
            command: listFraudsterRegistrationJobs,
            inputKey: \ListFraudsterRegistrationJobsRequest.nextToken,
            outputKey: \ListFraudsterRegistrationJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the speaker enrollment jobs in the domain with the specified JobStatus. If JobStatus is not provided, this lists all jobs with all possible speaker enrollment job statuses.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSpeakerEnrollmentJobsPaginator(
        _ input: ListSpeakerEnrollmentJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSpeakerEnrollmentJobsRequest, ListSpeakerEnrollmentJobsResponse> {
        return .init(
            input: input,
            command: listSpeakerEnrollmentJobs,
            inputKey: \ListSpeakerEnrollmentJobsRequest.nextToken,
            outputKey: \ListSpeakerEnrollmentJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all speakers in a specified domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSpeakersPaginator(
        _ input: ListSpeakersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSpeakersRequest, ListSpeakersResponse> {
        return .init(
            input: input,
            command: listSpeakers,
            inputKey: \ListSpeakersRequest.nextToken,
            outputKey: \ListSpeakersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
