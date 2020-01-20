// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension ACM {

    ///  Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. Default filtering returns only RSA_2048 certificates. For more information, see Filters.
    public func listCertificatesPaginator(_ input: ListCertificatesRequest) -> EventLoopFuture<[CertificateSummary]> {
        return client.paginate(input: input, command: listCertificates, resultKey: "certificateSummaryList", tokenKey: "nextToken")
    }
    
}

extension ACM.ListCertificatesRequest: AWSPaginateStringToken {
    public init(_ original: ACM.ListCertificatesRequest, token: String) {
        self.init(
            certificateStatuses: original.certificateStatuses, 
            includes: original.includes, 
            maxItems: original.maxItems, 
            nextToken: token
        )
    }
}


