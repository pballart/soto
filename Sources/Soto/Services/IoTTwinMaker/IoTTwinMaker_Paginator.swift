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

import SotoCore

// MARK: Paginators

extension IoTTwinMaker {
    ///  Retrieves information about the history of a time series property value for a component, component type, entity, or workspace. You must specify a value for workspaceId. For entity-specific queries, specify values for componentName and  entityId. For cross-entity quries, specify a value for componentTypeId.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getPropertyValueHistoryPaginator<Result>(
        _ input: GetPropertyValueHistoryRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetPropertyValueHistoryResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getPropertyValueHistory,
            inputKey: \GetPropertyValueHistoryRequest.nextToken,
            outputKey: \GetPropertyValueHistoryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getPropertyValueHistoryPaginator(
        _ input: GetPropertyValueHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetPropertyValueHistoryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getPropertyValueHistory,
            inputKey: \GetPropertyValueHistoryRequest.nextToken,
            outputKey: \GetPropertyValueHistoryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all component types in a workspace.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listComponentTypesPaginator<Result>(
        _ input: ListComponentTypesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListComponentTypesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listComponentTypes,
            inputKey: \ListComponentTypesRequest.nextToken,
            outputKey: \ListComponentTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listComponentTypesPaginator(
        _ input: ListComponentTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListComponentTypesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listComponentTypes,
            inputKey: \ListComponentTypesRequest.nextToken,
            outputKey: \ListComponentTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all entities in a workspace.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEntitiesPaginator<Result>(
        _ input: ListEntitiesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEntitiesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEntities,
            inputKey: \ListEntitiesRequest.nextToken,
            outputKey: \ListEntitiesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEntitiesPaginator(
        _ input: ListEntitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEntitiesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEntities,
            inputKey: \ListEntitiesRequest.nextToken,
            outputKey: \ListEntitiesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all scenes in a workspace.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listScenesPaginator<Result>(
        _ input: ListScenesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListScenesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listScenes,
            inputKey: \ListScenesRequest.nextToken,
            outputKey: \ListScenesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listScenesPaginator(
        _ input: ListScenesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListScenesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listScenes,
            inputKey: \ListScenesRequest.nextToken,
            outputKey: \ListScenesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves information about workspaces in the current account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listWorkspacesPaginator<Result>(
        _ input: ListWorkspacesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWorkspacesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWorkspaces,
            inputKey: \ListWorkspacesRequest.nextToken,
            outputKey: \ListWorkspacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listWorkspacesPaginator(
        _ input: ListWorkspacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWorkspacesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorkspaces,
            inputKey: \ListWorkspacesRequest.nextToken,
            outputKey: \ListWorkspacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension IoTTwinMaker.GetPropertyValueHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTTwinMaker.GetPropertyValueHistoryRequest {
        return .init(
            componentName: self.componentName,
            componentTypeId: self.componentTypeId,
            endTime: self.endTime,
            entityId: self.entityId,
            interpolation: self.interpolation,
            maxResults: self.maxResults,
            nextToken: token,
            orderByTime: self.orderByTime,
            propertyFilters: self.propertyFilters,
            selectedProperties: self.selectedProperties,
            startTime: self.startTime,
            workspaceId: self.workspaceId
        )
    }
}

extension IoTTwinMaker.ListComponentTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTTwinMaker.ListComponentTypesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            workspaceId: self.workspaceId
        )
    }
}

extension IoTTwinMaker.ListEntitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTTwinMaker.ListEntitiesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            workspaceId: self.workspaceId
        )
    }
}

extension IoTTwinMaker.ListScenesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTTwinMaker.ListScenesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workspaceId: self.workspaceId
        )
    }
}

extension IoTTwinMaker.ListWorkspacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTTwinMaker.ListWorkspacesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
