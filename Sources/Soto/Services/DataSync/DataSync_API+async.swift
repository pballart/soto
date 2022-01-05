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
extension DataSync {
    // MARK: Async API Calls

    /// Cancels execution of a task.  When you cancel a task execution, the transfer of some files is abruptly interrupted. The contents of files that are transferred to the destination might be incomplete or inconsistent with the source files. However, if you start a new task execution on the same task and you allow the task execution to complete, file content on the destination is complete and consistent. This applies to other unexpected failures that interrupt a task execution. In all of these cases, DataSync successfully complete the transfer when you start the next task execution.
    public func cancelTaskExecution(_ input: CancelTaskExecutionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelTaskExecutionResponse {
        return try await self.client.execute(operation: "CancelTaskExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Activates an DataSync agent that you have deployed on your host. The activation process associates your agent with your account. In the activation process, you specify information such as the Amazon Web Services Region that you want to activate the agent in. You activate the agent in the Amazon Web Services Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your tasks are created in this Amazon Web Services Region. You can activate the agent in a VPC (virtual private cloud) or provide the agent access to a VPC endpoint so you can run tasks without going over the public internet. You can use an agent for more than one location. If a task uses multiple agents, all of them need to have status AVAILABLE for the task to run. If you use multiple agents for a source location, the status of all the agents must be AVAILABLE for the task to run.  Agents are automatically updated by Amazon Web Services on a regular basis, using a mechanism that ensures minimal interruption to your tasks.
    public func createAgent(_ input: CreateAgentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAgentResponse {
        return try await self.client.execute(operation: "CreateAgent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an endpoint for an Amazon EFS file system.
    public func createLocationEfs(_ input: CreateLocationEfsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLocationEfsResponse {
        return try await self.client.execute(operation: "CreateLocationEfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an endpoint for an Amazon FSx for Lustre file system.
    public func createLocationFsxLustre(_ input: CreateLocationFsxLustreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLocationFsxLustreResponse {
        return try await self.client.execute(operation: "CreateLocationFsxLustre", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an endpoint for an Amazon FSx for Windows File Server file system.
    public func createLocationFsxWindows(_ input: CreateLocationFsxWindowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLocationFsxWindowsResponse {
        return try await self.client.execute(operation: "CreateLocationFsxWindows", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an endpoint for a Hadoop Distributed File System (HDFS).
    public func createLocationHdfs(_ input: CreateLocationHdfsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLocationHdfsResponse {
        return try await self.client.execute(operation: "CreateLocationHdfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Defines a file system on a Network File System (NFS) server that can be read from or written to.
    public func createLocationNfs(_ input: CreateLocationNfsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLocationNfsResponse {
        return try await self.client.execute(operation: "CreateLocationNfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an endpoint for a self-managed object storage bucket. For more information about self-managed object storage locations, see Creating a location for object storage.
    public func createLocationObjectStorage(_ input: CreateLocationObjectStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLocationObjectStorageResponse {
        return try await self.client.execute(operation: "CreateLocationObjectStorage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an endpoint for an Amazon S3 bucket. For more information, see Create an Amazon S3 location in the DataSync User Guide.
    public func createLocationS3(_ input: CreateLocationS3Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLocationS3Response {
        return try await self.client.execute(operation: "CreateLocationS3", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Defines a file system on a Server Message Block (SMB) server that can be read from or written to.
    public func createLocationSmb(_ input: CreateLocationSmbRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLocationSmbResponse {
        return try await self.client.execute(operation: "CreateLocationSmb", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a task. A task includes a source location and a destination location, and a configuration that specifies how data is transferred. A task always transfers data from the source location to the destination location. The configuration specifies options such as task scheduling, bandwidth limits, etc. A task is the complete definition of a data transfer. When you create a task that transfers data between Amazon Web Services services in different Amazon Web Services Regions, one of the two locations that you specify must reside in the Region where DataSync is being used. The other location must be specified in a different Region. You can transfer data between commercial Amazon Web Services Regions except for China, or between Amazon Web Services GovCloud (US) Regions.  When you use DataSync to copy files or objects between Amazon Web Services Regions, you pay for data transfer between Regions. This is billed as data transfer OUT from your source Region to your destination Region. For more information, see Data Transfer pricing.
    public func createTask(_ input: CreateTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        return try await self.client.execute(operation: "CreateTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN) of the agent in your request. The operation disassociates the agent from your Amazon Web Services account. However, it doesn't delete the agent virtual machine (VM) from your on-premises environment.
    public func deleteAgent(_ input: DeleteAgentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAgentResponse {
        return try await self.client.execute(operation: "DeleteAgent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the configuration of a location used by DataSync.
    public func deleteLocation(_ input: DeleteLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLocationResponse {
        return try await self.client.execute(operation: "DeleteLocation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a task.
    public func deleteTask(_ input: DeleteTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTaskResponse {
        return try await self.client.execute(operation: "DeleteTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata such as the name, the network interfaces, and the status (that is, whether the agent is running or not) for an agent. To specify which agent to describe, use the Amazon Resource Name (ARN) of the agent in your request.
    public func describeAgent(_ input: DescribeAgentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentResponse {
        return try await self.client.execute(operation: "DescribeAgent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata, such as the path information about an Amazon EFS location.
    public func describeLocationEfs(_ input: DescribeLocationEfsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocationEfsResponse {
        return try await self.client.execute(operation: "DescribeLocationEfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata, such as the path information about an Amazon FSx for Lustre location.
    public func describeLocationFsxLustre(_ input: DescribeLocationFsxLustreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocationFsxLustreResponse {
        return try await self.client.execute(operation: "DescribeLocationFsxLustre", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata, such as the path information about an Amazon FSx for Windows File Server location.
    public func describeLocationFsxWindows(_ input: DescribeLocationFsxWindowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocationFsxWindowsResponse {
        return try await self.client.execute(operation: "DescribeLocationFsxWindows", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata, such as the authentication information about the Hadoop Distributed File System (HDFS) location.
    public func describeLocationHdfs(_ input: DescribeLocationHdfsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocationHdfsResponse {
        return try await self.client.execute(operation: "DescribeLocationHdfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata, such as the path information, about an NFS location.
    public func describeLocationNfs(_ input: DescribeLocationNfsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocationNfsResponse {
        return try await self.client.execute(operation: "DescribeLocationNfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata about a self-managed object storage server location. For more information about self-managed object storage locations, see Creating a location for object storage.
    public func describeLocationObjectStorage(_ input: DescribeLocationObjectStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocationObjectStorageResponse {
        return try await self.client.execute(operation: "DescribeLocationObjectStorage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata, such as bucket name, about an Amazon S3 bucket location.
    public func describeLocationS3(_ input: DescribeLocationS3Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocationS3Response {
        return try await self.client.execute(operation: "DescribeLocationS3", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata, such as the path and user information about an SMB location.
    public func describeLocationSmb(_ input: DescribeLocationSmbRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocationSmbResponse {
        return try await self.client.execute(operation: "DescribeLocationSmb", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata about a task.
    public func describeTask(_ input: DescribeTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResponse {
        return try await self.client.execute(operation: "DescribeTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns detailed metadata about a task that is being executed.
    public func describeTaskExecution(_ input: DescribeTaskExecutionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskExecutionResponse {
        return try await self.client.execute(operation: "DescribeTaskExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of agents owned by an Amazon Web Services account in the Amazon Web Services Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN). By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response. If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.
    public func listAgents(_ input: ListAgentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAgentsResponse {
        return try await self.client.execute(operation: "ListAgents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of source and destination locations. If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.
    public func listLocations(_ input: ListLocationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLocationsResponse {
        return try await self.client.execute(operation: "ListLocations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all the tags associated with a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of executed tasks.
    public func listTaskExecutions(_ input: ListTaskExecutionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTaskExecutionsResponse {
        return try await self.client.execute(operation: "ListTaskExecutions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the tasks.
    public func listTasks(_ input: ListTasksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTasksResponse {
        return try await self.client.execute(operation: "ListTasks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a specific invocation of a task. A TaskExecution value represents an individual run of a task. Each task can have at most one TaskExecution at a time.  TaskExecution has the following transition phases: INITIALIZING | PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE.  For detailed information, see the Task Execution section in the Components and Terminology topic in the DataSync User Guide.
    public func startTaskExecution(_ input: StartTaskExecutionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartTaskExecutionResponse {
        return try await self.client.execute(operation: "StartTaskExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies a key-value pair to an Amazon Web Services resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from an Amazon Web Services resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the name of an agent.
    public func updateAgent(_ input: UpdateAgentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAgentResponse {
        return try await self.client.execute(operation: "UpdateAgent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates some parameters of a previously created location for a Hadoop Distributed File System cluster.
    public func updateLocationHdfs(_ input: UpdateLocationHdfsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLocationHdfsResponse {
        return try await self.client.execute(operation: "UpdateLocationHdfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates some of the parameters of a previously created location for Network File System (NFS) access. For information about creating an NFS location, see Creating a location for NFS.
    public func updateLocationNfs(_ input: UpdateLocationNfsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLocationNfsResponse {
        return try await self.client.execute(operation: "UpdateLocationNfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates some of the parameters of a previously created location for self-managed object storage server access. For information about creating a self-managed object storage location, see Creating a location for object storage.
    public func updateLocationObjectStorage(_ input: UpdateLocationObjectStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLocationObjectStorageResponse {
        return try await self.client.execute(operation: "UpdateLocationObjectStorage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates some of the parameters of a previously created location for Server Message Block (SMB) file system access. For information about creating an SMB location, see Creating a location for SMB.
    public func updateLocationSmb(_ input: UpdateLocationSmbRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLocationSmbResponse {
        return try await self.client.execute(operation: "UpdateLocationSmb", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the metadata associated with a task.
    public func updateTask(_ input: UpdateTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTaskResponse {
        return try await self.client.execute(operation: "UpdateTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates execution of a task. You can modify bandwidth throttling for a task execution that is running or queued. For more information, see Adjusting Bandwidth Throttling for a Task Execution.  The only Option that can be modified by UpdateTaskExecution is  BytesPerSecond .
    public func updateTaskExecution(_ input: UpdateTaskExecutionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTaskExecutionResponse {
        return try await self.client.execute(operation: "UpdateTaskExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
