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

import SotoCore

// MARK: Paginators

extension LakeFormation {
    ///  Returns the Lake Formation permissions for a specified table or database resource located at a path in Amazon S3. GetEffectivePermissionsForPath will not return databases and tables if the catalog is encrypted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getEffectivePermissionsForPathPaginator<Result>(
        _ input: GetEffectivePermissionsForPathRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetEffectivePermissionsForPathResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getEffectivePermissionsForPath,
            inputKey: \GetEffectivePermissionsForPathRequest.nextToken,
            outputKey: \GetEffectivePermissionsForPathResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getEffectivePermissionsForPathPaginator(
        _ input: GetEffectivePermissionsForPathRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetEffectivePermissionsForPathResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getEffectivePermissionsForPath,
            inputKey: \GetEffectivePermissionsForPathRequest.nextToken,
            outputKey: \GetEffectivePermissionsForPathResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the set of Amazon S3 objects that make up the specified governed table. A transaction ID or timestamp can be specified for time-travel queries.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getTableObjectsPaginator<Result>(
        _ input: GetTableObjectsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetTableObjectsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getTableObjects,
            inputKey: \GetTableObjectsRequest.nextToken,
            outputKey: \GetTableObjectsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getTableObjectsPaginator(
        _ input: GetTableObjectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetTableObjectsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTableObjects,
            inputKey: \GetTableObjectsRequest.nextToken,
            outputKey: \GetTableObjectsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves the work units generated by the StartQueryPlanning operation.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getWorkUnitsPaginator<Result>(
        _ input: GetWorkUnitsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetWorkUnitsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getWorkUnits,
            inputKey: \GetWorkUnitsRequest.nextToken,
            outputKey: \GetWorkUnitsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getWorkUnitsPaginator(
        _ input: GetWorkUnitsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetWorkUnitsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getWorkUnits,
            inputKey: \GetWorkUnitsRequest.nextToken,
            outputKey: \GetWorkUnitsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all the data cell filters on a table.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDataCellsFilterPaginator<Result>(
        _ input: ListDataCellsFilterRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDataCellsFilterResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDataCellsFilter,
            inputKey: \ListDataCellsFilterRequest.nextToken,
            outputKey: \ListDataCellsFilterResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDataCellsFilterPaginator(
        _ input: ListDataCellsFilterRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDataCellsFilterResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDataCellsFilter,
            inputKey: \ListDataCellsFilterRequest.nextToken,
            outputKey: \ListDataCellsFilterResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists LF-tags that the requester has permission to view.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listLFTagsPaginator<Result>(
        _ input: ListLFTagsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLFTagsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listLFTags,
            inputKey: \ListLFTagsRequest.nextToken,
            outputKey: \ListLFTagsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listLFTagsPaginator(
        _ input: ListLFTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLFTagsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLFTags,
            inputKey: \ListLFTagsRequest.nextToken,
            outputKey: \ListLFTagsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see Security and Access Control to Metadata and Data.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPermissionsPaginator<Result>(
        _ input: ListPermissionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPermissionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPermissions,
            inputKey: \ListPermissionsRequest.nextToken,
            outputKey: \ListPermissionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPermissionsPaginator(
        _ input: ListPermissionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPermissionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPermissions,
            inputKey: \ListPermissionsRequest.nextToken,
            outputKey: \ListPermissionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the resources registered to be managed by the Data Catalog.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listResourcesPaginator<Result>(
        _ input: ListResourcesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResourcesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResources,
            inputKey: \ListResourcesRequest.nextToken,
            outputKey: \ListResourcesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listResourcesPaginator(
        _ input: ListResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResources,
            inputKey: \ListResourcesRequest.nextToken,
            outputKey: \ListResourcesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the configuration of all storage optimizers associated with a specified table.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTableStorageOptimizersPaginator<Result>(
        _ input: ListTableStorageOptimizersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTableStorageOptimizersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTableStorageOptimizers,
            inputKey: \ListTableStorageOptimizersRequest.nextToken,
            outputKey: \ListTableStorageOptimizersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTableStorageOptimizersPaginator(
        _ input: ListTableStorageOptimizersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTableStorageOptimizersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTableStorageOptimizers,
            inputKey: \ListTableStorageOptimizersRequest.nextToken,
            outputKey: \ListTableStorageOptimizersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns metadata about transactions and their status. To prevent the response from growing indefinitely, only uncommitted transactions and those available for time-travel queries are returned. This operation can help you identify uncommitted transactions or to get information about transactions.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTransactionsPaginator<Result>(
        _ input: ListTransactionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTransactionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTransactions,
            inputKey: \ListTransactionsRequest.nextToken,
            outputKey: \ListTransactionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTransactionsPaginator(
        _ input: ListTransactionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTransactionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTransactions,
            inputKey: \ListTransactionsRequest.nextToken,
            outputKey: \ListTransactionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  This operation allows a search on DATABASE resources by TagCondition. This operation is used by admins who want to grant user permissions on certain TagConditions. Before making a grant, the admin can use SearchDatabasesByTags to find all resources where the given TagConditions are valid to verify whether the returned resources can be shared.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func searchDatabasesByLFTagsPaginator<Result>(
        _ input: SearchDatabasesByLFTagsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchDatabasesByLFTagsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: searchDatabasesByLFTags,
            inputKey: \SearchDatabasesByLFTagsRequest.nextToken,
            outputKey: \SearchDatabasesByLFTagsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func searchDatabasesByLFTagsPaginator(
        _ input: SearchDatabasesByLFTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchDatabasesByLFTagsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchDatabasesByLFTags,
            inputKey: \SearchDatabasesByLFTagsRequest.nextToken,
            outputKey: \SearchDatabasesByLFTagsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  This operation allows a search on TABLE resources by LFTags. This will be used by admins who want to grant user permissions on certain LF-tags. Before making a grant, the admin can use SearchTablesByLFTags to find all resources where the given LFTags are valid to verify whether the returned resources can be shared.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func searchTablesByLFTagsPaginator<Result>(
        _ input: SearchTablesByLFTagsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchTablesByLFTagsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: searchTablesByLFTags,
            inputKey: \SearchTablesByLFTagsRequest.nextToken,
            outputKey: \SearchTablesByLFTagsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func searchTablesByLFTagsPaginator(
        _ input: SearchTablesByLFTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchTablesByLFTagsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchTablesByLFTags,
            inputKey: \SearchTablesByLFTagsRequest.nextToken,
            outputKey: \SearchTablesByLFTagsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension LakeFormation.GetEffectivePermissionsForPathRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.GetEffectivePermissionsForPathRequest {
        return .init(
            catalogId: self.catalogId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension LakeFormation.GetTableObjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.GetTableObjectsRequest {
        return .init(
            catalogId: self.catalogId,
            databaseName: self.databaseName,
            maxResults: self.maxResults,
            nextToken: token,
            partitionPredicate: self.partitionPredicate,
            queryAsOfTime: self.queryAsOfTime,
            tableName: self.tableName,
            transactionId: self.transactionId
        )
    }
}

extension LakeFormation.GetWorkUnitsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.GetWorkUnitsRequest {
        return .init(
            nextToken: token,
            pageSize: self.pageSize,
            queryId: self.queryId
        )
    }
}

extension LakeFormation.ListDataCellsFilterRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.ListDataCellsFilterRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            table: self.table
        )
    }
}

extension LakeFormation.ListLFTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.ListLFTagsRequest {
        return .init(
            catalogId: self.catalogId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceShareType: self.resourceShareType
        )
    }
}

extension LakeFormation.ListPermissionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.ListPermissionsRequest {
        return .init(
            catalogId: self.catalogId,
            includeRelated: self.includeRelated,
            maxResults: self.maxResults,
            nextToken: token,
            principal: self.principal,
            resource: self.resource,
            resourceType: self.resourceType
        )
    }
}

extension LakeFormation.ListResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.ListResourcesRequest {
        return .init(
            filterConditionList: self.filterConditionList,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LakeFormation.ListTableStorageOptimizersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.ListTableStorageOptimizersRequest {
        return .init(
            catalogId: self.catalogId,
            databaseName: self.databaseName,
            maxResults: self.maxResults,
            nextToken: token,
            storageOptimizerType: self.storageOptimizerType,
            tableName: self.tableName
        )
    }
}

extension LakeFormation.ListTransactionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.ListTransactionsRequest {
        return .init(
            catalogId: self.catalogId,
            maxResults: self.maxResults,
            nextToken: token,
            statusFilter: self.statusFilter
        )
    }
}

extension LakeFormation.SearchDatabasesByLFTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.SearchDatabasesByLFTagsRequest {
        return .init(
            catalogId: self.catalogId,
            expression: self.expression,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LakeFormation.SearchTablesByLFTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.SearchTablesByLFTagsRequest {
        return .init(
            catalogId: self.catalogId,
            expression: self.expression,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
