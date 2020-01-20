// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension MediaConvert {

    ///  Send an request with an empty body to the regional API endpoint to get your account API endpoint.
    public func describeEndpointsPaginator(_ input: DescribeEndpointsRequest) -> EventLoopFuture<[Endpoint]> {
        return client.paginate(input: input, command: describeEndpoints, resultKey: "endpoints", tokenKey: "nextToken")
    }
    
    ///  Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
    public func listJobTemplatesPaginator(_ input: ListJobTemplatesRequest) -> EventLoopFuture<[JobTemplate]> {
        return client.paginate(input: input, command: listJobTemplates, resultKey: "jobTemplates", tokenKey: "nextToken")
    }
    
    ///  Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
    public func listJobsPaginator(_ input: ListJobsRequest) -> EventLoopFuture<[Job]> {
        return client.paginate(input: input, command: listJobs, resultKey: "jobs", tokenKey: "nextToken")
    }
    
    ///  Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
    public func listPresetsPaginator(_ input: ListPresetsRequest) -> EventLoopFuture<[Preset]> {
        return client.paginate(input: input, command: listPresets, resultKey: "presets", tokenKey: "nextToken")
    }
    
    ///  Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
    public func listQueuesPaginator(_ input: ListQueuesRequest) -> EventLoopFuture<[Queue]> {
        return client.paginate(input: input, command: listQueues, resultKey: "queues", tokenKey: "nextToken")
    }
    
}

extension MediaConvert.DescribeEndpointsRequest: AWSPaginateStringToken {
    public init(_ original: MediaConvert.DescribeEndpointsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            mode: original.mode, 
            nextToken: token
        )
    }
}

extension MediaConvert.ListJobTemplatesRequest: AWSPaginateStringToken {
    public init(_ original: MediaConvert.ListJobTemplatesRequest, token: String) {
        self.init(
            category: original.category, 
            listBy: original.listBy, 
            maxResults: original.maxResults, 
            nextToken: token, 
            order: original.order
        )
    }
}

extension MediaConvert.ListJobsRequest: AWSPaginateStringToken {
    public init(_ original: MediaConvert.ListJobsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            order: original.order, 
            queue: original.queue, 
            status: original.status
        )
    }
}

extension MediaConvert.ListPresetsRequest: AWSPaginateStringToken {
    public init(_ original: MediaConvert.ListPresetsRequest, token: String) {
        self.init(
            category: original.category, 
            listBy: original.listBy, 
            maxResults: original.maxResults, 
            nextToken: token, 
            order: original.order
        )
    }
}

extension MediaConvert.ListQueuesRequest: AWSPaginateStringToken {
    public init(_ original: MediaConvert.ListQueuesRequest, token: String) {
        self.init(
            listBy: original.listBy, 
            maxResults: original.maxResults, 
            nextToken: token, 
            order: original.order
        )
    }
}


