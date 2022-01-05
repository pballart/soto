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
extension AppConfig {
    ///  Lists all applications in your Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListApplicationsRequest, Applications> {
        return .init(
            input: input,
            command: listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \Applications.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the configuration profiles for an application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConfigurationProfilesPaginator(
        _ input: ListConfigurationProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConfigurationProfilesRequest, ConfigurationProfiles> {
        return .init(
            input: input,
            command: listConfigurationProfiles,
            inputKey: \ListConfigurationProfilesRequest.nextToken,
            outputKey: \ConfigurationProfiles.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists deployment strategies.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeploymentStrategiesPaginator(
        _ input: ListDeploymentStrategiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeploymentStrategiesRequest, DeploymentStrategies> {
        return .init(
            input: input,
            command: listDeploymentStrategies,
            inputKey: \ListDeploymentStrategiesRequest.nextToken,
            outputKey: \DeploymentStrategies.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the deployments for an environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeploymentsPaginator(
        _ input: ListDeploymentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeploymentsRequest, Deployments> {
        return .init(
            input: input,
            command: listDeployments,
            inputKey: \ListDeploymentsRequest.nextToken,
            outputKey: \Deployments.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the environments for an application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEnvironmentsPaginator(
        _ input: ListEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEnvironmentsRequest, Environments> {
        return .init(
            input: input,
            command: listEnvironments,
            inputKey: \ListEnvironmentsRequest.nextToken,
            outputKey: \Environments.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists configurations stored in the AppConfig hosted configuration store by version.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHostedConfigurationVersionsPaginator(
        _ input: ListHostedConfigurationVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHostedConfigurationVersionsRequest, HostedConfigurationVersions> {
        return .init(
            input: input,
            command: listHostedConfigurationVersions,
            inputKey: \ListHostedConfigurationVersionsRequest.nextToken,
            outputKey: \HostedConfigurationVersions.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
