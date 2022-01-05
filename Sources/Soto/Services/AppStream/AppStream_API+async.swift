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
extension AppStream {
    // MARK: Async API Calls

    /// Associates the specified application with the specified fleet. This is only supported for Elastic fleets.
    public func associateApplicationFleet(_ input: AssociateApplicationFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateApplicationFleetResult {
        return try await self.client.execute(operation: "AssociateApplicationFleet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates the specified fleet with the specified stack.
    public func associateFleet(_ input: AssociateFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateFleetResult {
        return try await self.client.execute(operation: "AssociateFleet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.
    public func batchAssociateUserStack(_ input: BatchAssociateUserStackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAssociateUserStackResult {
        return try await self.client.execute(operation: "BatchAssociateUserStack", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the specified users from the specified stacks.
    public func batchDisassociateUserStack(_ input: BatchDisassociateUserStackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDisassociateUserStackResult {
        return try await self.client.execute(operation: "BatchDisassociateUserStack", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.
    public func copyImage(_ input: CopyImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyImageResponse {
        return try await self.client.execute(operation: "CopyImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an app block. App blocks are an Amazon AppStream 2.0 resource that stores the details about the virtual hard disk in an S3 bucket. It also stores the setup script with details about how to mount the virtual hard disk. The virtual hard disk includes the application binaries and other files necessary to launch your applications. Multiple applications can be assigned to a single app block. This is only supported for Elastic fleets.
    public func createAppBlock(_ input: CreateAppBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppBlockResult {
        return try await self.client.execute(operation: "CreateAppBlock", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an application. Applications are an Amazon AppStream 2.0 resource that stores the details about how to launch applications on Elastic fleet streaming instances. An application consists of the launch details, icon, and display name. Applications are associated with an app block that contains the application binaries and other files. The applications assigned to an Elastic fleet are the applications users can launch.  This is only supported for Elastic fleets.
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationResult {
        return try await self.client.execute(operation: "CreateApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    public func createDirectoryConfig(_ input: CreateDirectoryConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDirectoryConfigResult {
        return try await self.client.execute(operation: "CreateDirectoryConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a fleet. A fleet consists of streaming instances that run a specified image when using Always-On or On-Demand.
    public func createFleet(_ input: CreateFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFleetResult {
        return try await self.client.execute(operation: "CreateFleet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an image builder. An image builder is a virtual machine that is used to create an image. The initial state of the builder is PENDING. When it is ready, the state is RUNNING.
    public func createImageBuilder(_ input: CreateImageBuilderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageBuilderResult {
        return try await self.client.execute(operation: "CreateImageBuilder", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a URL to start an image builder streaming session.
    public func createImageBuilderStreamingURL(_ input: CreateImageBuilderStreamingURLRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageBuilderStreamingURLResult {
        return try await self.client.execute(operation: "CreateImageBuilderStreamingURL", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations.
    public func createStack(_ input: CreateStackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStackResult {
        return try await self.client.execute(operation: "CreateStack", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup.
    public func createStreamingURL(_ input: CreateStreamingURLRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStreamingURLResult {
        return try await self.client.execute(operation: "CreateStreamingURL", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new image with the latest Windows operating system updates, driver updates, and AppStream 2.0 agent software. For more information, see the "Update an Image by Using Managed AppStream 2.0 Image Updates" section in Administer Your AppStream 2.0 Images, in the Amazon AppStream 2.0 Administration Guide.
    public func createUpdatedImage(_ input: CreateUpdatedImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUpdatedImageResult {
        return try await self.client.execute(operation: "CreateUpdatedImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a usage report subscription. Usage reports are generated daily.
    public func createUsageReportSubscription(_ input: CreateUsageReportSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUsageReportSubscriptionResult {
        return try await self.client.execute(operation: "CreateUsageReportSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new user in the user pool.
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResult {
        return try await self.client.execute(operation: "CreateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an app block.
    public func deleteAppBlock(_ input: DeleteAppBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppBlockResult {
        return try await self.client.execute(operation: "DeleteAppBlock", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an application.
    public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationResult {
        return try await self.client.execute(operation: "DeleteApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.
    public func deleteDirectoryConfig(_ input: DeleteDirectoryConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDirectoryConfigResult {
        return try await self.client.execute(operation: "DeleteDirectoryConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified fleet.
    public func deleteFleet(_ input: DeleteFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFleetResult {
        return try await self.client.execute(operation: "DeleteFleet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified image. You cannot delete an image when it is in use. After you delete an image, you cannot provision new capacity using the image.
    public func deleteImage(_ input: DeleteImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageResult {
        return try await self.client.execute(operation: "DeleteImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified image builder and releases the capacity.
    public func deleteImageBuilder(_ input: DeleteImageBuilderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageBuilderResult {
        return try await self.client.execute(operation: "DeleteImageBuilder", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.
    public func deleteImagePermissions(_ input: DeleteImagePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImagePermissionsResult {
        return try await self.client.execute(operation: "DeleteImagePermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.
    public func deleteStack(_ input: DeleteStackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStackResult {
        return try await self.client.execute(operation: "DeleteStack", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables usage report generation.
    public func deleteUsageReportSubscription(_ input: DeleteUsageReportSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsageReportSubscriptionResult {
        return try await self.client.execute(operation: "DeleteUsageReportSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a user from the user pool.
    public func deleteUser(_ input: DeleteUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResult {
        return try await self.client.execute(operation: "DeleteUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more app blocks.
    public func describeAppBlocks(_ input: DescribeAppBlocksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppBlocksResult {
        return try await self.client.execute(operation: "DescribeAppBlocks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more application fleet associations. Either ApplicationArn or FleetName must be specified.
    public func describeApplicationFleetAssociations(_ input: DescribeApplicationFleetAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationFleetAssociationsResult {
        return try await self.client.execute(operation: "DescribeApplicationFleetAssociations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more applications.
    public func describeApplications(_ input: DescribeApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResult {
        return try await self.client.execute(operation: "DescribeApplications", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains.  Although the response syntax in this topic includes the account password, this password is not returned in the actual response.
    public func describeDirectoryConfigs(_ input: DescribeDirectoryConfigsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectoryConfigsResult {
        return try await self.client.execute(operation: "DescribeDirectoryConfigs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.
    public func describeFleets(_ input: DescribeFleetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetsResult {
        return try await self.client.execute(operation: "DescribeFleets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.
    public func describeImageBuilders(_ input: DescribeImageBuildersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageBuildersResult {
        return try await self.client.execute(operation: "DescribeImageBuilders", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own.
    public func describeImagePermissions(_ input: DescribeImagePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagePermissionsResult {
        return try await self.client.execute(operation: "DescribeImagePermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.
    public func describeImages(_ input: DescribeImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResult {
        return try await self.client.execute(operation: "DescribeImages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet, only streaming sessions for that user are described. If an authentication type is not provided, the default is to authenticate users using a streaming URL.
    public func describeSessions(_ input: DescribeSessionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSessionsResult {
        return try await self.client.execute(operation: "DescribeSessions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.
    public func describeStacks(_ input: DescribeStacksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStacksResult {
        return try await self.client.execute(operation: "DescribeStacks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more usage report subscriptions.
    public func describeUsageReportSubscriptions(_ input: DescribeUsageReportSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsageReportSubscriptionsResult {
        return try await self.client.execute(operation: "DescribeUsageReportSubscriptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:   The stack name   The user name (email address of the user associated with the stack) and the authentication type for the user
    public func describeUserStackAssociations(_ input: DescribeUserStackAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserStackAssociationsResult {
        return try await self.client.execute(operation: "DescribeUserStackAssociations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more specified users in the user pool.
    public func describeUsers(_ input: DescribeUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersResult {
        return try await self.client.execute(operation: "DescribeUsers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user.
    public func disableUser(_ input: DisableUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableUserResult {
        return try await self.client.execute(operation: "DisableUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the specified application from the fleet.
    public func disassociateApplicationFleet(_ input: DisassociateApplicationFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateApplicationFleetResult {
        return try await self.client.execute(operation: "DisassociateApplicationFleet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the specified fleet from the specified stack.
    public func disassociateFleet(_ input: DisassociateFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateFleetResult {
        return try await self.client.execute(operation: "DisassociateFleet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.
    public func enableUser(_ input: EnableUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableUserResult {
        return try await self.client.execute(operation: "EnableUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Immediately stops the specified streaming session.
    public func expireSession(_ input: ExpireSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExpireSessionResult {
        return try await self.client.execute(operation: "ExpireSession", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the name of the fleet that is associated with the specified stack.
    public func listAssociatedFleets(_ input: ListAssociatedFleetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssociatedFleetsResult {
        return try await self.client.execute(operation: "ListAssociatedFleets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the name of the stack with which the specified fleet is associated.
    public func listAssociatedStacks(_ input: ListAssociatedStacksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssociatedStacksResult {
        return try await self.client.execute(operation: "ListAssociatedStacks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the specified fleet.
    public func startFleet(_ input: StartFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartFleetResult {
        return try await self.client.execute(operation: "StartFleet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the specified image builder.
    public func startImageBuilder(_ input: StartImageBuilderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartImageBuilderResult {
        return try await self.client.execute(operation: "StartImageBuilder", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the specified fleet.
    public func stopFleet(_ input: StopFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopFleetResult {
        return try await self.client.execute(operation: "StopFleet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the specified image builder.
    public func stopImageBuilder(_ input: StopImageBuilderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopImageBuilderResult {
        return try await self.client.execute(operation: "StopImageBuilder", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value. To list the current tags for your resources, use ListTagsForResource. To disassociate tags from your resources, use UntagResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates one or more specified tags from the specified AppStream 2.0 resource. To list the current tags for your resources, use ListTagsForResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified application.
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApplicationResult {
        return try await self.client.execute(operation: "UpdateApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    public func updateDirectoryConfig(_ input: UpdateDirectoryConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDirectoryConfigResult {
        return try await self.client.execute(operation: "UpdateDirectoryConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified fleet. If the fleet is in the STOPPED state, you can update any attribute except the fleet name. If the fleet is in the RUNNING state, you can update the following based on the fleet type:   Always-On and On-Demand fleet types You can update the DisplayName, ComputeCapacity, ImageARN, ImageName, IdleDisconnectTimeoutInSeconds, and DisconnectTimeoutInSeconds attributes.   Elastic fleet type You can update the DisplayName, IdleDisconnectTimeoutInSeconds, DisconnectTimeoutInSeconds, MaxConcurrentSessions, and UsbDeviceFilterStrings attributes.   If the fleet is in the STARTING or STOPPED state, you can't update it.
    public func updateFleet(_ input: UpdateFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetResult {
        return try await self.client.execute(operation: "UpdateFleet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or updates permissions for the specified private image.
    public func updateImagePermissions(_ input: UpdateImagePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateImagePermissionsResult {
        return try await self.client.execute(operation: "UpdateImagePermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified fields for the specified stack.
    public func updateStack(_ input: UpdateStackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStackResult {
        return try await self.client.execute(operation: "UpdateStack", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
