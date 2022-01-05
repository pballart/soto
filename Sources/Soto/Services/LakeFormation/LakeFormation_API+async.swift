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
extension LakeFormation {
    // MARK: Async API Calls

    /// Attaches one or more LF-tags to an existing resource.
    public func addLFTagsToResource(_ input: AddLFTagsToResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddLFTagsToResourceResponse {
        return try await self.client.execute(operation: "AddLFTagsToResource", path: "/AddLFTagsToResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Batch operation to grant permissions to the principal.
    public func batchGrantPermissions(_ input: BatchGrantPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGrantPermissionsResponse {
        return try await self.client.execute(operation: "BatchGrantPermissions", path: "/BatchGrantPermissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Batch operation to revoke permissions from the principal.
    public func batchRevokePermissions(_ input: BatchRevokePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchRevokePermissionsResponse {
        return try await self.client.execute(operation: "BatchRevokePermissions", path: "/BatchRevokePermissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attempts to cancel the specified transaction. Returns an exception if the transaction was previously committed.
    public func cancelTransaction(_ input: CancelTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelTransactionResponse {
        return try await self.client.execute(operation: "CancelTransaction", path: "/CancelTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attempts to commit the specified transaction. Returns an exception if the transaction was previously aborted. This API action is idempotent if called multiple times for the same transaction.
    public func commitTransaction(_ input: CommitTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitTransactionResponse {
        return try await self.client.execute(operation: "CommitTransaction", path: "/CommitTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a data cell filter to allow one to grant access to certain columns on certain rows.
    public func createDataCellsFilter(_ input: CreateDataCellsFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataCellsFilterResponse {
        return try await self.client.execute(operation: "CreateDataCellsFilter", path: "/CreateDataCellsFilter", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an LF-tag with the specified name and values.
    public func createLFTag(_ input: CreateLFTagRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLFTagResponse {
        return try await self.client.execute(operation: "CreateLFTag", path: "/CreateLFTag", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a data cell filter.
    public func deleteDataCellsFilter(_ input: DeleteDataCellsFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDataCellsFilterResponse {
        return try await self.client.execute(operation: "DeleteDataCellsFilter", path: "/DeleteDataCellsFilter", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified LF-tag key name. If the attribute key does not exist or the LF-tag does not exist, then the operation will not do anything. If the attribute key exists, then the operation checks if any resources are tagged with this attribute key, if yes, the API throws a 400 Exception with the message "Delete not allowed" as the LF-tag key is still attached with resources. You can consider untagging resources with this LF-tag key.
    public func deleteLFTag(_ input: DeleteLFTagRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLFTagResponse {
        return try await self.client.execute(operation: "DeleteLFTag", path: "/DeleteLFTag", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For a specific governed table, provides a list of Amazon S3 objects that will be written during the current transaction and that can be automatically deleted if the transaction is canceled. Without this call, no Amazon S3 objects are automatically deleted when a transaction cancels.   The Glue ETL library function write_dynamic_frame.from_catalog() includes an option to automatically call DeleteObjectsOnCancel before writes. For more information, see Rolling Back Amazon S3 Writes.
    public func deleteObjectsOnCancel(_ input: DeleteObjectsOnCancelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteObjectsOnCancelResponse {
        return try await self.client.execute(operation: "DeleteObjectsOnCancel", path: "/DeleteObjectsOnCancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters the resource as managed by the Data Catalog. When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.
    public func deregisterResource(_ input: DeregisterResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterResourceResponse {
        return try await self.client.execute(operation: "DeregisterResource", path: "/DeregisterResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the current data access role for the given resource registered in Lake Formation.
    public func describeResource(_ input: DescribeResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceResponse {
        return try await self.client.execute(operation: "DescribeResource", path: "/DescribeResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details of a single transaction.
    public func describeTransaction(_ input: DescribeTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTransactionResponse {
        return try await self.client.execute(operation: "DescribeTransaction", path: "/DescribeTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Indicates to the service that the specified transaction is still active and should not be treated as idle and aborted. Write transactions that remain idle for a long period are automatically aborted unless explicitly extended.
    public func extendTransaction(_ input: ExtendTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExtendTransactionResponse {
        return try await self.client.execute(operation: "ExtendTransaction", path: "/ExtendTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of the data lake administrators of a Lake Formation-managed data lake.
    public func getDataLakeSettings(_ input: GetDataLakeSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataLakeSettingsResponse {
        return try await self.client.execute(operation: "GetDataLakeSettings", path: "/GetDataLakeSettings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the Lake Formation permissions for a specified table or database resource located at a path in Amazon S3. GetEffectivePermissionsForPath will not return databases and tables if the catalog is encrypted.
    public func getEffectivePermissionsForPath(_ input: GetEffectivePermissionsForPathRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEffectivePermissionsForPathResponse {
        return try await self.client.execute(operation: "GetEffectivePermissionsForPath", path: "/GetEffectivePermissionsForPath", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an LF-tag definition.
    public func getLFTag(_ input: GetLFTagRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLFTagResponse {
        return try await self.client.execute(operation: "GetLFTag", path: "/GetLFTag", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the state of a query previously submitted. Clients are expected to poll GetQueryState to monitor the current state of the planning before retrieving the work units. A query state is only visible to the principal that made the initial call to StartQueryPlanning.
    public func getQueryState(_ input: GetQueryStateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetQueryStateResponse {
        return try await self.client.execute(operation: "GetQueryState", path: "/GetQueryState", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "query-", logger: logger, on: eventLoop)
    }

    /// Retrieves statistics on the planning and execution of a query.
    public func getQueryStatistics(_ input: GetQueryStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetQueryStatisticsResponse {
        return try await self.client.execute(operation: "GetQueryStatistics", path: "/GetQueryStatistics", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "query-", logger: logger, on: eventLoop)
    }

    /// Returns the LF-tags applied to a resource.
    public func getResourceLFTags(_ input: GetResourceLFTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourceLFTagsResponse {
        return try await self.client.execute(operation: "GetResourceLFTags", path: "/GetResourceLFTags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the set of Amazon S3 objects that make up the specified governed table. A transaction ID or timestamp can be specified for time-travel queries.
    public func getTableObjects(_ input: GetTableObjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTableObjectsResponse {
        return try await self.client.execute(operation: "GetTableObjects", path: "/GetTableObjects", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the work units resulting from the query. Work units can be executed in any order and in parallel.
    public func getWorkUnitResults(_ input: GetWorkUnitResultsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkUnitResultsResponse {
        return try await self.client.execute(operation: "GetWorkUnitResults", path: "/GetWorkUnitResults", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data-", logger: logger, on: eventLoop)
    }

    /// Retrieves the work units generated by the StartQueryPlanning operation.
    public func getWorkUnits(_ input: GetWorkUnitsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkUnitsResponse {
        return try await self.client.execute(operation: "GetWorkUnits", path: "/GetWorkUnits", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "query-", logger: logger, on: eventLoop)
    }

    /// Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. For information about permissions, see Security and Access Control to Metadata and Data.
    public func grantPermissions(_ input: GrantPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GrantPermissionsResponse {
        return try await self.client.execute(operation: "GrantPermissions", path: "/GrantPermissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the data cell filters on a table.
    public func listDataCellsFilter(_ input: ListDataCellsFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataCellsFilterResponse {
        return try await self.client.execute(operation: "ListDataCellsFilter", path: "/ListDataCellsFilter", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists LF-tags that the requester has permission to view.
    public func listLFTags(_ input: ListLFTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLFTagsResponse {
        return try await self.client.execute(operation: "ListLFTags", path: "/ListLFTags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see Security and Access Control to Metadata and Data.
    public func listPermissions(_ input: ListPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPermissionsResponse {
        return try await self.client.execute(operation: "ListPermissions", path: "/ListPermissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the resources registered to be managed by the Data Catalog.
    public func listResources(_ input: ListResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourcesResponse {
        return try await self.client.execute(operation: "ListResources", path: "/ListResources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the configuration of all storage optimizers associated with a specified table.
    public func listTableStorageOptimizers(_ input: ListTableStorageOptimizersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTableStorageOptimizersResponse {
        return try await self.client.execute(operation: "ListTableStorageOptimizers", path: "/ListTableStorageOptimizers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata about transactions and their status. To prevent the response from growing indefinitely, only uncommitted transactions and those available for time-travel queries are returned. This operation can help you identify uncommitted transactions or to get information about transactions.
    public func listTransactions(_ input: ListTransactionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTransactionsResponse {
        return try await self.client.execute(operation: "ListTransactions", path: "/ListTransactions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the list of data lake administrators who have admin privileges on all resources managed by Lake Formation. For more information on admin privileges, see Granting Lake Formation Permissions. This API replaces the current list of data lake admins with the new list being passed. To add an admin, fetch the current list and add the new admin to that list and pass that list in this API.
    public func putDataLakeSettings(_ input: PutDataLakeSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutDataLakeSettingsResponse {
        return try await self.client.execute(operation: "PutDataLakeSettings", path: "/PutDataLakeSettings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers the resource as managed by the Data Catalog. To add or update data, Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy. The following request registers a new location and gives Lake Formation permission to use the service-linked role to access that location.  ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true  If UseServiceLinkedRole is not set to true, you must provide or set the RoleArn:  arn:aws:iam::12345:role/my-data-access-role
    public func registerResource(_ input: RegisterResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterResourceResponse {
        return try await self.client.execute(operation: "RegisterResource", path: "/RegisterResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an LF-tag from the resource. Only database, table, or tableWithColumns resource are allowed. To tag columns, use the column inclusion list in tableWithColumns to specify column input.
    public func removeLFTagsFromResource(_ input: RemoveLFTagsFromResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveLFTagsFromResourceResponse {
        return try await self.client.execute(operation: "RemoveLFTagsFromResource", path: "/RemoveLFTagsFromResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.
    public func revokePermissions(_ input: RevokePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokePermissionsResponse {
        return try await self.client.execute(operation: "RevokePermissions", path: "/RevokePermissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation allows a search on DATABASE resources by TagCondition. This operation is used by admins who want to grant user permissions on certain TagConditions. Before making a grant, the admin can use SearchDatabasesByTags to find all resources where the given TagConditions are valid to verify whether the returned resources can be shared.
    public func searchDatabasesByLFTags(_ input: SearchDatabasesByLFTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchDatabasesByLFTagsResponse {
        return try await self.client.execute(operation: "SearchDatabasesByLFTags", path: "/SearchDatabasesByLFTags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation allows a search on TABLE resources by LFTags. This will be used by admins who want to grant user permissions on certain LF-tags. Before making a grant, the admin can use SearchTablesByLFTags to find all resources where the given LFTags are valid to verify whether the returned resources can be shared.
    public func searchTablesByLFTags(_ input: SearchTablesByLFTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchTablesByLFTagsResponse {
        return try await self.client.execute(operation: "SearchTablesByLFTags", path: "/SearchTablesByLFTags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Submits a request to process a query statement. This operation generates work units that can be retrieved with the GetWorkUnits operation as soon as the query state is WORKUNITS_AVAILABLE or FINISHED.
    public func startQueryPlanning(_ input: StartQueryPlanningRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartQueryPlanningResponse {
        return try await self.client.execute(operation: "StartQueryPlanning", path: "/StartQueryPlanning", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "query-", logger: logger, on: eventLoop)
    }

    /// Starts a new transaction and returns its transaction ID. Transaction IDs are opaque objects that you can use to identify a transaction.
    public func startTransaction(_ input: StartTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartTransactionResponse {
        return try await self.client.execute(operation: "StartTransaction", path: "/StartTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the list of possible values for the specified LF-tag key. If the LF-tag does not exist, the operation throws an EntityNotFoundException. The values in the delete key values will be deleted from list of possible values. If any value in the delete key values is attached to a resource, then API errors out with a 400 Exception - "Update not allowed". Untag the attribute before deleting the LF-tag key's value.
    public func updateLFTag(_ input: UpdateLFTagRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLFTagResponse {
        return try await self.client.execute(operation: "UpdateLFTag", path: "/UpdateLFTag", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the data access role used for vending access to the given (registered) resource in Lake Formation.
    public func updateResource(_ input: UpdateResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResourceResponse {
        return try await self.client.execute(operation: "UpdateResource", path: "/UpdateResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the manifest of Amazon S3 objects that make up the specified governed table.
    public func updateTableObjects(_ input: UpdateTableObjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTableObjectsResponse {
        return try await self.client.execute(operation: "UpdateTableObjects", path: "/UpdateTableObjects", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration of the storage optimizers for a table.
    public func updateTableStorageOptimizer(_ input: UpdateTableStorageOptimizerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTableStorageOptimizerResponse {
        return try await self.client.execute(operation: "UpdateTableStorageOptimizer", path: "/UpdateTableStorageOptimizer", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming Async API Calls

    /// Returns the work units resulting from the query. Work units can be executed in any order and in parallel.
    public func getWorkUnitResultsStreaming(_ input: GetWorkUnitResultsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) async throws -> GetWorkUnitResultsResponse {
        return try await self.client.execute(operation: "GetWorkUnitResults", path: "/GetWorkUnitResults", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data-", logger: logger, on: eventLoop, stream: stream)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
