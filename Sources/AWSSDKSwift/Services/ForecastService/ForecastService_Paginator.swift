// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension ForecastService {

    ///  Returns a list of dataset groups created using the CreateDatasetGroup operation. For each dataset group, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the dataset group ARN with the DescribeDatasetGroup operation.
    public func listDatasetGroupsPaginator(_ input: ListDatasetGroupsRequest) -> EventLoopFuture<[DatasetGroupSummary]> {
        return client.paginate(input: input, command: listDatasetGroups, resultKey: "datasetGroups", tokenKey: "nextToken")
    }
    
    ///  Returns a list of dataset import jobs created using the CreateDatasetImportJob operation. For each import job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the DescribeDatasetImportJob operation. You can filter the list by providing an array of Filter objects.
    public func listDatasetImportJobsPaginator(_ input: ListDatasetImportJobsRequest) -> EventLoopFuture<[DatasetImportJobSummary]> {
        return client.paginate(input: input, command: listDatasetImportJobs, resultKey: "datasetImportJobs", tokenKey: "nextToken")
    }
    
    ///  Returns a list of datasets created using the CreateDataset operation. For each dataset, a summary of its properties, including its Amazon Resource Name (ARN), is returned. To retrieve the complete set of properties, use the ARN with the DescribeDataset operation.
    public func listDatasetsPaginator(_ input: ListDatasetsRequest) -> EventLoopFuture<[DatasetSummary]> {
        return client.paginate(input: input, command: listDatasets, resultKey: "datasets", tokenKey: "nextToken")
    }
    
    ///  Returns a list of forecast export jobs created using the CreateForecastExportJob operation. For each forecast export job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, use the ARN with the DescribeForecastExportJob operation. You can filter the list using an array of Filter objects.
    public func listForecastExportJobsPaginator(_ input: ListForecastExportJobsRequest) -> EventLoopFuture<[ForecastExportJobSummary]> {
        return client.paginate(input: input, command: listForecastExportJobs, resultKey: "forecastExportJobs", tokenKey: "nextToken")
    }
    
    ///  Returns a list of forecasts created using the CreateForecast operation. For each forecast, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, specify the ARN with the DescribeForecast operation. You can filter the list using an array of Filter objects.
    public func listForecastsPaginator(_ input: ListForecastsRequest) -> EventLoopFuture<[ForecastSummary]> {
        return client.paginate(input: input, command: listForecasts, resultKey: "forecasts", tokenKey: "nextToken")
    }
    
    ///  Returns a list of predictors created using the CreatePredictor operation. For each predictor, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the DescribePredictor operation. You can filter the list using an array of Filter objects.
    public func listPredictorsPaginator(_ input: ListPredictorsRequest) -> EventLoopFuture<[PredictorSummary]> {
        return client.paginate(input: input, command: listPredictors, resultKey: "predictors", tokenKey: "nextToken")
    }
    
}

extension ForecastService.ListDatasetGroupsRequest: AWSPaginateStringToken {
    public init(_ original: ForecastService.ListDatasetGroupsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ForecastService.ListDatasetImportJobsRequest: AWSPaginateStringToken {
    public init(_ original: ForecastService.ListDatasetImportJobsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ForecastService.ListDatasetsRequest: AWSPaginateStringToken {
    public init(_ original: ForecastService.ListDatasetsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ForecastService.ListForecastExportJobsRequest: AWSPaginateStringToken {
    public init(_ original: ForecastService.ListForecastExportJobsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ForecastService.ListForecastsRequest: AWSPaginateStringToken {
    public init(_ original: ForecastService.ListForecastsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ForecastService.ListPredictorsRequest: AWSPaginateStringToken {
    public init(_ original: ForecastService.ListPredictorsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


