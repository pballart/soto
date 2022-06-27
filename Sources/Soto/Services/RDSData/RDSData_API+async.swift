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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension RDSData {
    // MARK: Async API Calls

    /// Runs a batch SQL statement over an array of data. You can run bulk update and insert operations for multiple records using a DML  statement with different parameter sets. Bulk operations can provide a significant  performance improvement over individual insert and update operations.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically. There isn't a fixed upper limit on the number of parameter sets. However, the maximum size of the HTTP request submitted through the Data API is 4 MiB. If the request exceeds this limit, the Data API returns an error and doesn't process the request. This 4-MiB limit includes the size of the HTTP headers and the JSON notation in the request. Thus, the number of parameter sets that you can include depends on a combination of factors, such as the size of the SQL statement and the size of each parameter set. The response size limit is 1 MiB. If the call returns more than 1 MiB of response data, the call is terminated.
    public func batchExecuteStatement(_ input: BatchExecuteStatementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchExecuteStatementResponse {
        return try await self.client.execute(operation: "BatchExecuteStatement", path: "/BatchExecute", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a SQL transaction.   A transaction can run for a maximum of 24 hours. A transaction is terminated and  rolled back automatically after 24 hours. A transaction times out if no calls use its transaction ID in three minutes.  If a transaction times out before it's committed, it's rolled back automatically. DDL statements inside a transaction cause an implicit commit. We recommend  that you run each DDL statement in a separate ExecuteStatement call with  continueAfterTimeout enabled.
    public func beginTransaction(_ input: BeginTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BeginTransactionResponse {
        return try await self.client.execute(operation: "BeginTransaction", path: "/BeginTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Ends a SQL transaction started with the BeginTransaction operation and commits the changes.
    public func commitTransaction(_ input: CommitTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitTransactionResponse {
        return try await self.client.execute(operation: "CommitTransaction", path: "/CommitTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Runs one or more SQL statements.  This operation is deprecated. Use the BatchExecuteStatement or ExecuteStatement operation.
    @available(*, deprecated, message: "The ExecuteSql API is deprecated, please use the ExecuteStatement API.")
    public func executeSql(_ input: ExecuteSqlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteSqlResponse {
        return try await self.client.execute(operation: "ExecuteSql", path: "/ExecuteSql", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Runs a SQL statement against a database.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically. If the binary response data from the database is more than 1 MB, the call is terminated.
    public func executeStatement(_ input: ExecuteStatementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteStatementResponse {
        return try await self.client.execute(operation: "ExecuteStatement", path: "/Execute", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Performs a rollback of a transaction. Rolling back a transaction cancels its changes.
    public func rollbackTransaction(_ input: RollbackTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollbackTransactionResponse {
        return try await self.client.execute(operation: "RollbackTransaction", path: "/RollbackTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
