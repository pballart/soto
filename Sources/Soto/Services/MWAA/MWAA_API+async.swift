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

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MWAA {
    // MARK: Async API Calls

    /// Create a CLI token to use Airflow CLI.
    public func createCliToken(_ input: CreateCliTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCliTokenResponse {
        return try await self.client.execute(operation: "CreateCliToken", path: "/clitoken/{Name}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "env.", logger: logger, on: eventLoop)
    }

    /// Creates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func createEnvironment(_ input: CreateEnvironmentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnvironmentOutput {
        return try await self.client.execute(operation: "CreateEnvironment", path: "/environments/{Name}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Create a JWT token to be used to login to Airflow Web UI with claims based Authentication.
    public func createWebLoginToken(_ input: CreateWebLoginTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWebLoginTokenResponse {
        return try await self.client.execute(operation: "CreateWebLoginToken", path: "/webtoken/{Name}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "env.", logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func deleteEnvironment(_ input: DeleteEnvironmentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEnvironmentOutput {
        return try await self.client.execute(operation: "DeleteEnvironment", path: "/environments/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves the details of an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func getEnvironment(_ input: GetEnvironmentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEnvironmentOutput {
        return try await self.client.execute(operation: "GetEnvironment", path: "/environments/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists the Amazon Managed Workflows for Apache Airflow (MWAA) environments.
    public func listEnvironments(_ input: ListEnvironmentsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEnvironmentsOutput {
        return try await self.client.execute(operation: "ListEnvironments", path: "/environments", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists the key-value tag pairs associated to the Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, "Environment": "Staging".
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// An operation for publishing metrics from the customers to the Ops plane.
    public func publishMetrics(_ input: PublishMetricsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishMetricsOutput {
        return try await self.client.execute(operation: "PublishMetrics", path: "/metrics/environments/{EnvironmentName}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "ops.", logger: logger, on: eventLoop)
    }

    /// Associates key-value tag pairs to your Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceOutput {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Removes key-value tag pairs associated to your Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, "Environment": "Staging".
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceOutput {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func updateEnvironment(_ input: UpdateEnvironmentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEnvironmentOutput {
        return try await self.client.execute(operation: "UpdateEnvironment", path: "/environments/{Name}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
