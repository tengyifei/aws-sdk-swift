// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**

*/
public struct KinesisVideoArchivedMedia {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "kinesisvideo",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2017-09-30",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [KinesisVideoArchivedMediaError.self]
        )
    }

    ///  Gets media for a list of fragments (specified by fragment number) from the archived data in a Kinesis video stream.  This operation is only available for the AWS SDK for Java. It is not supported in AWS SDKs for other languages.  The following limits apply when using the GetMediaForFragmentList API:   A client can call GetMediaForFragmentList up to five times per second per stream.    Kinesis Video Streams sends media data at a rate of up to 25 megabytes per second (or 200 megabits per second) during a GetMediaForFragmentList session.   
    public func getMediaForFragmentList(_ input: GetMediaForFragmentListInput) throws -> GetMediaForFragmentListOutput {
        return try client.send(operation: "GetMediaForFragmentList", path: "/getMediaForFragmentList", httpMethod: "POST", input: input)
    }

    ///  Returns a list of Fragment objects from the specified stream and start location within the archived data.
    public func listFragments(_ input: ListFragmentsInput) throws -> ListFragmentsOutput {
        return try client.send(operation: "ListFragments", path: "/listFragments", httpMethod: "POST", input: input)
    }


}