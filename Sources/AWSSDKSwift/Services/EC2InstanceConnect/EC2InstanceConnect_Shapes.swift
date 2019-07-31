// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension EC2InstanceConnect {

    public struct SendSSHPublicKeyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AvailabilityZone", required: true, type: .string), 
            AWSShapeMember(label: "InstanceId", required: true, type: .string), 
            AWSShapeMember(label: "InstanceOSUser", required: true, type: .string), 
            AWSShapeMember(label: "SSHPublicKey", required: true, type: .string)
        ]
        /// The availability zone the EC2 instance was launched in.
        public let availabilityZone: String
        /// The EC2 instance you wish to publish the SSH key to.
        public let instanceId: String
        /// The OS user on the EC2 instance whom the key may be used to authenticate as.
        public let instanceOSUser: String
        /// The public key to be published to the instance. To use it after publication you must have the matching private key.
        public let sSHPublicKey: String

        public init(availabilityZone: String, instanceId: String, instanceOSUser: String, sSHPublicKey: String) {
            self.availabilityZone = availabilityZone
            self.instanceId = instanceId
            self.instanceOSUser = instanceOSUser
            self.sSHPublicKey = sSHPublicKey
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case instanceId = "InstanceId"
            case instanceOSUser = "InstanceOSUser"
            case sSHPublicKey = "SSHPublicKey"
        }
    }

    public struct SendSSHPublicKeyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "RequestId", required: false, type: .string), 
            AWSShapeMember(label: "Success", required: false, type: .boolean)
        ]
        /// The request ID as logged by EC2 Connect. Please provide this when contacting AWS Support.
        public let requestId: String?
        /// Indicates request success.
        public let success: Bool?

        public init(requestId: String? = nil, success: Bool? = nil) {
            self.requestId = requestId
            self.success = success
        }

        private enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
            case success = "Success"
        }
    }
}
