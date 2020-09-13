// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudWatchEvents
public enum CloudWatchEventsErrorType: AWSErrorType {
    case concurrentModificationException(message: String?)
    case internalException(message: String?)
    case invalidEventPatternException(message: String?)
    case invalidStateException(message: String?)
    case limitExceededException(message: String?)
    case managedRuleException(message: String?)
    case operationDisabledException(message: String?)
    case policyLengthExceededException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension CloudWatchEventsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "InvalidEventPatternException":
            self = .invalidEventPatternException(message: message)
        case "InvalidStateException":
            self = .invalidStateException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ManagedRuleException":
            self = .managedRuleException(message: message)
        case "OperationDisabledException":
            self = .operationDisabledException(message: message)
        case "PolicyLengthExceededException":
            self = .policyLengthExceededException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension CloudWatchEventsErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .internalException(let message):
            return "InternalException: \(message ?? "")"
        case .invalidEventPatternException(let message):
            return "InvalidEventPatternException: \(message ?? "")"
        case .invalidStateException(let message):
            return "InvalidStateException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .managedRuleException(let message):
            return "ManagedRuleException: \(message ?? "")"
        case .operationDisabledException(let message):
            return "OperationDisabledException: \(message ?? "")"
        case .policyLengthExceededException(let message):
            return "PolicyLengthExceededException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        }
    }
}
