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
extension CodeArtifact {
    ///   Returns a list of DomainSummary objects for all domains owned by the AWS account that makes this call. Each returned DomainSummary object contains information about a domain.
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
    ) -> AWSClient.PaginatorSequence<ListDomainsRequest, ListDomainsResult> {
        return .init(
            input: input,
            command: listDomains,
            inputKey: \ListDomainsRequest.nextToken,
            outputKey: \ListDomainsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of AssetSummary objects for assets in a package version.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPackageVersionAssetsPaginator(
        _ input: ListPackageVersionAssetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPackageVersionAssetsRequest, ListPackageVersionAssetsResult> {
        return .init(
            input: input,
            command: listPackageVersionAssets,
            inputKey: \ListPackageVersionAssetsRequest.nextToken,
            outputKey: \ListPackageVersionAssetsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of PackageVersionSummary objects for package versions in a repository that match the request parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPackageVersionsPaginator(
        _ input: ListPackageVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPackageVersionsRequest, ListPackageVersionsResult> {
        return .init(
            input: input,
            command: listPackageVersions,
            inputKey: \ListPackageVersionsRequest.nextToken,
            outputKey: \ListPackageVersionsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of PackageSummary objects for packages in a repository that match the request parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPackagesPaginator(
        _ input: ListPackagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPackagesRequest, ListPackagesResult> {
        return .init(
            input: input,
            command: listPackages,
            inputKey: \ListPackagesRequest.nextToken,
            outputKey: \ListPackagesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of RepositorySummary objects. Each RepositorySummary contains information about a repository in the specified AWS account and that matches the input parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRepositoriesPaginator(
        _ input: ListRepositoriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRepositoriesRequest, ListRepositoriesResult> {
        return .init(
            input: input,
            command: listRepositories,
            inputKey: \ListRepositoriesRequest.nextToken,
            outputKey: \ListRepositoriesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of RepositorySummary objects. Each RepositorySummary contains information about a repository in the specified domain and that matches the input parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRepositoriesInDomainPaginator(
        _ input: ListRepositoriesInDomainRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRepositoriesInDomainRequest, ListRepositoriesInDomainResult> {
        return .init(
            input: input,
            command: listRepositoriesInDomain,
            inputKey: \ListRepositoriesInDomainRequest.nextToken,
            outputKey: \ListRepositoriesInDomainResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
