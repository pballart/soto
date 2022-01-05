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
extension AccessAnalyzer {
    ///  Retrieves a list of access preview findings generated by the specified access preview.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccessPreviewFindingsPaginator(
        _ input: ListAccessPreviewFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccessPreviewFindingsRequest, ListAccessPreviewFindingsResponse> {
        return .init(
            input: input,
            command: listAccessPreviewFindings,
            inputKey: \ListAccessPreviewFindingsRequest.nextToken,
            outputKey: \ListAccessPreviewFindingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of access previews for the specified analyzer.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccessPreviewsPaginator(
        _ input: ListAccessPreviewsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccessPreviewsRequest, ListAccessPreviewsResponse> {
        return .init(
            input: input,
            command: listAccessPreviews,
            inputKey: \ListAccessPreviewsRequest.nextToken,
            outputKey: \ListAccessPreviewsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAnalyzedResourcesPaginator(
        _ input: ListAnalyzedResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAnalyzedResourcesRequest, ListAnalyzedResourcesResponse> {
        return .init(
            input: input,
            command: listAnalyzedResources,
            inputKey: \ListAnalyzedResourcesRequest.nextToken,
            outputKey: \ListAnalyzedResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of analyzers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAnalyzersPaginator(
        _ input: ListAnalyzersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAnalyzersRequest, ListAnalyzersResponse> {
        return .init(
            input: input,
            command: listAnalyzers,
            inputKey: \ListAnalyzersRequest.nextToken,
            outputKey: \ListAnalyzersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of archive rules created for the specified analyzer.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listArchiveRulesPaginator(
        _ input: ListArchiveRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListArchiveRulesRequest, ListArchiveRulesResponse> {
        return .init(
            input: input,
            command: listArchiveRules,
            inputKey: \ListArchiveRulesRequest.nextToken,
            outputKey: \ListArchiveRulesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of findings generated by the specified analyzer. To learn about filter keys that you can use to retrieve a list of findings, see IAM Access Analyzer filter keys in the IAM User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFindingsRequest, ListFindingsResponse> {
        return .init(
            input: input,
            command: listFindings,
            inputKey: \ListFindingsRequest.nextToken,
            outputKey: \ListFindingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all of the policy generations requested in the last seven days.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPolicyGenerationsPaginator(
        _ input: ListPolicyGenerationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPolicyGenerationsRequest, ListPolicyGenerationsResponse> {
        return .init(
            input: input,
            command: listPolicyGenerations,
            inputKey: \ListPolicyGenerationsRequest.nextToken,
            outputKey: \ListPolicyGenerationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Requests the validation of a policy and returns a list of findings. The findings help you identify issues and provide actionable recommendations to resolve the issue and enable you to author functional policies that meet security best practices.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func validatePolicyPaginator(
        _ input: ValidatePolicyRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ValidatePolicyRequest, ValidatePolicyResponse> {
        return .init(
            input: input,
            command: validatePolicy,
            inputKey: \ValidatePolicyRequest.nextToken,
            outputKey: \ValidatePolicyResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
