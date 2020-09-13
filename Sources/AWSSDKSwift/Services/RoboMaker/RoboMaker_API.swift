// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS RoboMaker service.

This section provides documentation for the AWS RoboMaker API operations.
*/
public struct RoboMaker {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the RoboMaker client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "robomaker",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-06-29",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [RoboMakerErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Deletes one or more worlds in a batch operation.
    public func batchDeleteWorlds(_ input: BatchDeleteWorldsRequest) -> EventLoopFuture<BatchDeleteWorldsResponse> {
        return client.send(operation: "BatchDeleteWorlds", path: "/batchDeleteWorlds", httpMethod: "POST", input: input)
    }

    ///  Describes one or more simulation jobs.
    public func batchDescribeSimulationJob(_ input: BatchDescribeSimulationJobRequest) -> EventLoopFuture<BatchDescribeSimulationJobResponse> {
        return client.send(operation: "BatchDescribeSimulationJob", path: "/batchDescribeSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Cancels the specified deployment job.
    public func cancelDeploymentJob(_ input: CancelDeploymentJobRequest) -> EventLoopFuture<CancelDeploymentJobResponse> {
        return client.send(operation: "CancelDeploymentJob", path: "/cancelDeploymentJob", httpMethod: "POST", input: input)
    }

    ///  Cancels the specified simulation job.
    public func cancelSimulationJob(_ input: CancelSimulationJobRequest) -> EventLoopFuture<CancelSimulationJobResponse> {
        return client.send(operation: "CancelSimulationJob", path: "/cancelSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Cancels a simulation job batch. When you cancel a simulation job batch, you are also cancelling all of the active simulation jobs created as part of the batch. 
    public func cancelSimulationJobBatch(_ input: CancelSimulationJobBatchRequest) -> EventLoopFuture<CancelSimulationJobBatchResponse> {
        return client.send(operation: "CancelSimulationJobBatch", path: "/cancelSimulationJobBatch", httpMethod: "POST", input: input)
    }

    ///  Cancels the specified export job.
    public func cancelWorldExportJob(_ input: CancelWorldExportJobRequest) -> EventLoopFuture<CancelWorldExportJobResponse> {
        return client.send(operation: "CancelWorldExportJob", path: "/cancelWorldExportJob", httpMethod: "POST", input: input)
    }

    ///  Cancels the specified world generator job.
    public func cancelWorldGenerationJob(_ input: CancelWorldGenerationJobRequest) -> EventLoopFuture<CancelWorldGenerationJobResponse> {
        return client.send(operation: "CancelWorldGenerationJob", path: "/cancelWorldGenerationJob", httpMethod: "POST", input: input)
    }

    ///  Deploys a specific version of a robot application to robots in a fleet. The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see Creating a Robot Application Version.   After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.  
    public func createDeploymentJob(_ input: CreateDeploymentJobRequest) -> EventLoopFuture<CreateDeploymentJobResponse> {
        return client.send(operation: "CreateDeploymentJob", path: "/createDeploymentJob", httpMethod: "POST", input: input)
    }

    ///  Creates a fleet, a logical group of robots running the same robot application.
    public func createFleet(_ input: CreateFleetRequest) -> EventLoopFuture<CreateFleetResponse> {
        return client.send(operation: "CreateFleet", path: "/createFleet", httpMethod: "POST", input: input)
    }

    ///  Creates a robot.
    public func createRobot(_ input: CreateRobotRequest) -> EventLoopFuture<CreateRobotResponse> {
        return client.send(operation: "CreateRobot", path: "/createRobot", httpMethod: "POST", input: input)
    }

    ///  Creates a robot application. 
    public func createRobotApplication(_ input: CreateRobotApplicationRequest) -> EventLoopFuture<CreateRobotApplicationResponse> {
        return client.send(operation: "CreateRobotApplication", path: "/createRobotApplication", httpMethod: "POST", input: input)
    }

    ///  Creates a version of a robot application.
    public func createRobotApplicationVersion(_ input: CreateRobotApplicationVersionRequest) -> EventLoopFuture<CreateRobotApplicationVersionResponse> {
        return client.send(operation: "CreateRobotApplicationVersion", path: "/createRobotApplicationVersion", httpMethod: "POST", input: input)
    }

    ///  Creates a simulation application.
    public func createSimulationApplication(_ input: CreateSimulationApplicationRequest) -> EventLoopFuture<CreateSimulationApplicationResponse> {
        return client.send(operation: "CreateSimulationApplication", path: "/createSimulationApplication", httpMethod: "POST", input: input)
    }

    ///  Creates a simulation application with a specific revision id.
    public func createSimulationApplicationVersion(_ input: CreateSimulationApplicationVersionRequest) -> EventLoopFuture<CreateSimulationApplicationVersionResponse> {
        return client.send(operation: "CreateSimulationApplicationVersion", path: "/createSimulationApplicationVersion", httpMethod: "POST", input: input)
    }

    ///  Creates a simulation job.  After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.  
    public func createSimulationJob(_ input: CreateSimulationJobRequest) -> EventLoopFuture<CreateSimulationJobResponse> {
        return client.send(operation: "CreateSimulationJob", path: "/createSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Creates a world export job.
    public func createWorldExportJob(_ input: CreateWorldExportJobRequest) -> EventLoopFuture<CreateWorldExportJobResponse> {
        return client.send(operation: "CreateWorldExportJob", path: "/createWorldExportJob", httpMethod: "POST", input: input)
    }

    ///  Creates worlds using the specified template.
    public func createWorldGenerationJob(_ input: CreateWorldGenerationJobRequest) -> EventLoopFuture<CreateWorldGenerationJobResponse> {
        return client.send(operation: "CreateWorldGenerationJob", path: "/createWorldGenerationJob", httpMethod: "POST", input: input)
    }

    ///  Creates a world template.
    public func createWorldTemplate(_ input: CreateWorldTemplateRequest) -> EventLoopFuture<CreateWorldTemplateResponse> {
        return client.send(operation: "CreateWorldTemplate", path: "/createWorldTemplate", httpMethod: "POST", input: input)
    }

    ///  Deletes a fleet.
    public func deleteFleet(_ input: DeleteFleetRequest) -> EventLoopFuture<DeleteFleetResponse> {
        return client.send(operation: "DeleteFleet", path: "/deleteFleet", httpMethod: "POST", input: input)
    }

    ///  Deletes a robot.
    public func deleteRobot(_ input: DeleteRobotRequest) -> EventLoopFuture<DeleteRobotResponse> {
        return client.send(operation: "DeleteRobot", path: "/deleteRobot", httpMethod: "POST", input: input)
    }

    ///  Deletes a robot application.
    public func deleteRobotApplication(_ input: DeleteRobotApplicationRequest) -> EventLoopFuture<DeleteRobotApplicationResponse> {
        return client.send(operation: "DeleteRobotApplication", path: "/deleteRobotApplication", httpMethod: "POST", input: input)
    }

    ///  Deletes a simulation application.
    public func deleteSimulationApplication(_ input: DeleteSimulationApplicationRequest) -> EventLoopFuture<DeleteSimulationApplicationResponse> {
        return client.send(operation: "DeleteSimulationApplication", path: "/deleteSimulationApplication", httpMethod: "POST", input: input)
    }

    ///  Deletes a world template.
    public func deleteWorldTemplate(_ input: DeleteWorldTemplateRequest) -> EventLoopFuture<DeleteWorldTemplateResponse> {
        return client.send(operation: "DeleteWorldTemplate", path: "/deleteWorldTemplate", httpMethod: "POST", input: input)
    }

    ///  Deregisters a robot.
    public func deregisterRobot(_ input: DeregisterRobotRequest) -> EventLoopFuture<DeregisterRobotResponse> {
        return client.send(operation: "DeregisterRobot", path: "/deregisterRobot", httpMethod: "POST", input: input)
    }

    ///  Describes a deployment job.
    public func describeDeploymentJob(_ input: DescribeDeploymentJobRequest) -> EventLoopFuture<DescribeDeploymentJobResponse> {
        return client.send(operation: "DescribeDeploymentJob", path: "/describeDeploymentJob", httpMethod: "POST", input: input)
    }

    ///  Describes a fleet.
    public func describeFleet(_ input: DescribeFleetRequest) -> EventLoopFuture<DescribeFleetResponse> {
        return client.send(operation: "DescribeFleet", path: "/describeFleet", httpMethod: "POST", input: input)
    }

    ///  Describes a robot.
    public func describeRobot(_ input: DescribeRobotRequest) -> EventLoopFuture<DescribeRobotResponse> {
        return client.send(operation: "DescribeRobot", path: "/describeRobot", httpMethod: "POST", input: input)
    }

    ///  Describes a robot application.
    public func describeRobotApplication(_ input: DescribeRobotApplicationRequest) -> EventLoopFuture<DescribeRobotApplicationResponse> {
        return client.send(operation: "DescribeRobotApplication", path: "/describeRobotApplication", httpMethod: "POST", input: input)
    }

    ///  Describes a simulation application.
    public func describeSimulationApplication(_ input: DescribeSimulationApplicationRequest) -> EventLoopFuture<DescribeSimulationApplicationResponse> {
        return client.send(operation: "DescribeSimulationApplication", path: "/describeSimulationApplication", httpMethod: "POST", input: input)
    }

    ///  Describes a simulation job.
    public func describeSimulationJob(_ input: DescribeSimulationJobRequest) -> EventLoopFuture<DescribeSimulationJobResponse> {
        return client.send(operation: "DescribeSimulationJob", path: "/describeSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Describes a simulation job batch.
    public func describeSimulationJobBatch(_ input: DescribeSimulationJobBatchRequest) -> EventLoopFuture<DescribeSimulationJobBatchResponse> {
        return client.send(operation: "DescribeSimulationJobBatch", path: "/describeSimulationJobBatch", httpMethod: "POST", input: input)
    }

    ///  Describes a world.
    public func describeWorld(_ input: DescribeWorldRequest) -> EventLoopFuture<DescribeWorldResponse> {
        return client.send(operation: "DescribeWorld", path: "/describeWorld", httpMethod: "POST", input: input)
    }

    ///  Describes a world export job.
    public func describeWorldExportJob(_ input: DescribeWorldExportJobRequest) -> EventLoopFuture<DescribeWorldExportJobResponse> {
        return client.send(operation: "DescribeWorldExportJob", path: "/describeWorldExportJob", httpMethod: "POST", input: input)
    }

    ///  Describes a world generation job.
    public func describeWorldGenerationJob(_ input: DescribeWorldGenerationJobRequest) -> EventLoopFuture<DescribeWorldGenerationJobResponse> {
        return client.send(operation: "DescribeWorldGenerationJob", path: "/describeWorldGenerationJob", httpMethod: "POST", input: input)
    }

    ///  Describes a world template.
    public func describeWorldTemplate(_ input: DescribeWorldTemplateRequest) -> EventLoopFuture<DescribeWorldTemplateResponse> {
        return client.send(operation: "DescribeWorldTemplate", path: "/describeWorldTemplate", httpMethod: "POST", input: input)
    }

    ///  Gets the world template body.
    public func getWorldTemplateBody(_ input: GetWorldTemplateBodyRequest) -> EventLoopFuture<GetWorldTemplateBodyResponse> {
        return client.send(operation: "GetWorldTemplateBody", path: "/getWorldTemplateBody", httpMethod: "POST", input: input)
    }

    ///  Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs. 
    public func listDeploymentJobs(_ input: ListDeploymentJobsRequest) -> EventLoopFuture<ListDeploymentJobsResponse> {
        return client.send(operation: "ListDeploymentJobs", path: "/listDeploymentJobs", httpMethod: "POST", input: input)
    }

    ///  Returns a list of fleets. You can optionally provide filters to retrieve specific fleets. 
    public func listFleets(_ input: ListFleetsRequest) -> EventLoopFuture<ListFleetsResponse> {
        return client.send(operation: "ListFleets", path: "/listFleets", httpMethod: "POST", input: input)
    }

    ///  Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
    public func listRobotApplications(_ input: ListRobotApplicationsRequest) -> EventLoopFuture<ListRobotApplicationsResponse> {
        return client.send(operation: "ListRobotApplications", path: "/listRobotApplications", httpMethod: "POST", input: input)
    }

    ///  Returns a list of robots. You can optionally provide filters to retrieve specific robots.
    public func listRobots(_ input: ListRobotsRequest) -> EventLoopFuture<ListRobotsResponse> {
        return client.send(operation: "ListRobots", path: "/listRobots", httpMethod: "POST", input: input)
    }

    ///  Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications. 
    public func listSimulationApplications(_ input: ListSimulationApplicationsRequest) -> EventLoopFuture<ListSimulationApplicationsResponse> {
        return client.send(operation: "ListSimulationApplications", path: "/listSimulationApplications", httpMethod: "POST", input: input)
    }

    ///  Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs. 
    public func listSimulationJobBatches(_ input: ListSimulationJobBatchesRequest) -> EventLoopFuture<ListSimulationJobBatchesResponse> {
        return client.send(operation: "ListSimulationJobBatches", path: "/listSimulationJobBatches", httpMethod: "POST", input: input)
    }

    ///  Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs. 
    public func listSimulationJobs(_ input: ListSimulationJobsRequest) -> EventLoopFuture<ListSimulationJobsResponse> {
        return client.send(operation: "ListSimulationJobs", path: "/listSimulationJobs", httpMethod: "POST", input: input)
    }

    ///  Lists all tags on a AWS RoboMaker resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Lists world export jobs.
    public func listWorldExportJobs(_ input: ListWorldExportJobsRequest) -> EventLoopFuture<ListWorldExportJobsResponse> {
        return client.send(operation: "ListWorldExportJobs", path: "/listWorldExportJobs", httpMethod: "POST", input: input)
    }

    ///  Lists world generator jobs.
    public func listWorldGenerationJobs(_ input: ListWorldGenerationJobsRequest) -> EventLoopFuture<ListWorldGenerationJobsResponse> {
        return client.send(operation: "ListWorldGenerationJobs", path: "/listWorldGenerationJobs", httpMethod: "POST", input: input)
    }

    ///  Lists world templates.
    public func listWorldTemplates(_ input: ListWorldTemplatesRequest) -> EventLoopFuture<ListWorldTemplatesResponse> {
        return client.send(operation: "ListWorldTemplates", path: "/listWorldTemplates", httpMethod: "POST", input: input)
    }

    ///  Lists worlds.
    public func listWorlds(_ input: ListWorldsRequest) -> EventLoopFuture<ListWorldsResponse> {
        return client.send(operation: "ListWorlds", path: "/listWorlds", httpMethod: "POST", input: input)
    }

    ///  Registers a robot with a fleet.
    public func registerRobot(_ input: RegisterRobotRequest) -> EventLoopFuture<RegisterRobotResponse> {
        return client.send(operation: "RegisterRobot", path: "/registerRobot", httpMethod: "POST", input: input)
    }

    ///  Restarts a running simulation job.
    public func restartSimulationJob(_ input: RestartSimulationJobRequest) -> EventLoopFuture<RestartSimulationJobResponse> {
        return client.send(operation: "RestartSimulationJob", path: "/restartSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Starts a new simulation job batch. The batch is defined using one or more SimulationJobRequest objects. 
    public func startSimulationJobBatch(_ input: StartSimulationJobBatchRequest) -> EventLoopFuture<StartSimulationJobBatchResponse> {
        return client.send(operation: "StartSimulationJobBatch", path: "/startSimulationJobBatch", httpMethod: "POST", input: input)
    }

    ///  Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.
    public func syncDeploymentJob(_ input: SyncDeploymentJobRequest) -> EventLoopFuture<SyncDeploymentJobResponse> {
        return client.send(operation: "SyncDeploymentJob", path: "/syncDeploymentJob", httpMethod: "POST", input: input)
    }

    ///  Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings.  For information about the rules that apply to tag keys and tag values, see User-Defined Tag Restrictions in the AWS Billing and Cost Management User Guide. 
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use  TagResource . 
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates a robot application.
    public func updateRobotApplication(_ input: UpdateRobotApplicationRequest) -> EventLoopFuture<UpdateRobotApplicationResponse> {
        return client.send(operation: "UpdateRobotApplication", path: "/updateRobotApplication", httpMethod: "POST", input: input)
    }

    ///  Updates a simulation application.
    public func updateSimulationApplication(_ input: UpdateSimulationApplicationRequest) -> EventLoopFuture<UpdateSimulationApplicationResponse> {
        return client.send(operation: "UpdateSimulationApplication", path: "/updateSimulationApplication", httpMethod: "POST", input: input)
    }

    ///  Updates a world template.
    public func updateWorldTemplate(_ input: UpdateWorldTemplateRequest) -> EventLoopFuture<UpdateWorldTemplateResponse> {
        return client.send(operation: "UpdateWorldTemplate", path: "/updateWorldTemplate", httpMethod: "POST", input: input)
    }
}
