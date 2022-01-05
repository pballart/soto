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
extension CodeGuruProfiler {
    ///   Returns a list of  FindingsReportSummary  objects that contain analysis results for all profiling groups in your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getFindingsReportAccountSummaryPaginator(
        _ input: GetFindingsReportAccountSummaryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetFindingsReportAccountSummaryRequest, GetFindingsReportAccountSummaryResponse> {
        return .init(
            input: input,
            command: getFindingsReportAccountSummary,
            inputKey: \GetFindingsReportAccountSummaryRequest.nextToken,
            outputKey: \GetFindingsReportAccountSummaryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the available reports for a given profiling group and time range.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFindingsReportsPaginator(
        _ input: ListFindingsReportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFindingsReportsRequest, ListFindingsReportsResponse> {
        return .init(
            input: input,
            command: listFindingsReports,
            inputKey: \ListFindingsReportsRequest.nextToken,
            outputKey: \ListFindingsReportsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProfileTimesPaginator(
        _ input: ListProfileTimesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProfileTimesRequest, ListProfileTimesResponse> {
        return .init(
            input: input,
            command: listProfileTimes,
            inputKey: \ListProfileTimesRequest.nextToken,
            outputKey: \ListProfileTimesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of profiling groups. The profiling groups are returned as  ProfilingGroupDescription  objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProfilingGroupsPaginator(
        _ input: ListProfilingGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProfilingGroupsRequest, ListProfilingGroupsResponse> {
        return .init(
            input: input,
            command: listProfilingGroups,
            inputKey: \ListProfilingGroupsRequest.nextToken,
            outputKey: \ListProfilingGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
