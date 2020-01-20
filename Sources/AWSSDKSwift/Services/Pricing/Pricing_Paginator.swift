// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Pricing {

    ///  Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as AmazonEC2, to get information specific to that service, such as the attribute names available for that service. For example, some of the attribute names available for EC2 are volumeType, maxIopsVolume, operation, locationType, and instanceCapacity10xlarge.
    public func describeServicesPaginator(_ input: DescribeServicesRequest) -> EventLoopFuture<[Service]> {
        return client.paginate(input: input, command: describeServices, resultKey: "services", tokenKey: "nextToken")
    }
    
    ///  Returns a list of attribute values. Attibutes are similar to the details in a Price List API offer file. For a list of available attributes, see Offer File Definitions in the AWS Billing and Cost Management User Guide.
    public func getAttributeValuesPaginator(_ input: GetAttributeValuesRequest) -> EventLoopFuture<[AttributeValue]> {
        return client.paginate(input: input, command: getAttributeValues, resultKey: "attributeValues", tokenKey: "nextToken")
    }
    
    ///  Returns a list of all products that match the filter criteria.
    public func getProductsPaginator(_ input: GetProductsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: getProducts, resultKey: "priceList", tokenKey: "nextToken")
    }
    
}

extension Pricing.DescribeServicesRequest: AWSPaginateStringToken {
    public init(_ original: Pricing.DescribeServicesRequest, token: String) {
        self.init(
            formatVersion: original.formatVersion, 
            maxResults: original.maxResults, 
            nextToken: token, 
            serviceCode: original.serviceCode
        )
    }
}

extension Pricing.GetAttributeValuesRequest: AWSPaginateStringToken {
    public init(_ original: Pricing.GetAttributeValuesRequest, token: String) {
        self.init(
            attributeName: original.attributeName, 
            maxResults: original.maxResults, 
            nextToken: token, 
            serviceCode: original.serviceCode
        )
    }
}

extension Pricing.GetProductsRequest: AWSPaginateStringToken {
    public init(_ original: Pricing.GetProductsRequest, token: String) {
        self.init(
            filters: original.filters, 
            formatVersion: original.formatVersion, 
            maxResults: original.maxResults, 
            nextToken: token, 
            serviceCode: original.serviceCode
        )
    }
}


