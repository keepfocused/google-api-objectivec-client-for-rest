// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud TPU API (tpu/v1alpha1)
// Description:
//   TPU API provides customers with access to Google TPU technology.
// Documentation:
//   https://cloud.google.com/tpu/

#import "GTLRTPUObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRTPU_Node.state
NSString * const kGTLRTPU_Node_State_Creating         = @"CREATING";
NSString * const kGTLRTPU_Node_State_Deleting         = @"DELETING";
NSString * const kGTLRTPU_Node_State_Ready            = @"READY";
NSString * const kGTLRTPU_Node_State_Reimaging        = @"REIMAGING";
NSString * const kGTLRTPU_Node_State_Repairing        = @"REPAIRING";
NSString * const kGTLRTPU_Node_State_Restarting       = @"RESTARTING";
NSString * const kGTLRTPU_Node_State_StateUnspecified = @"STATE_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRTPU_Empty
//

@implementation GTLRTPU_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_ListLocationsResponse
//

@implementation GTLRTPU_ListLocationsResponse
@dynamic locations, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"locations" : [GTLRTPU_Location class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"locations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_ListNodesResponse
//

@implementation GTLRTPU_ListNodesResponse
@dynamic nextPageToken, nodes;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"nodes" : [GTLRTPU_Node class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"nodes";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_ListOperationsResponse
//

@implementation GTLRTPU_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRTPU_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_Location
//

@implementation GTLRTPU_Location
@dynamic labels, locationId, metadata, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_Location_Labels
//

@implementation GTLRTPU_Location_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_Location_Metadata
//

@implementation GTLRTPU_Location_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_NetworkEndpoint
//

@implementation GTLRTPU_NetworkEndpoint
@dynamic ipAddress, port;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_Node
//

@implementation GTLRTPU_Node
@dynamic acceleratorType, cidrBlock, createTime, descriptionProperty,
         healthDescription, ipAddress, name, network, networkEndpoints, port,
         serviceAccount, state, tensorflowVersion;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"networkEndpoints" : [GTLRTPU_NetworkEndpoint class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_Operation
//

@implementation GTLRTPU_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_Operation_Metadata
//

@implementation GTLRTPU_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_Operation_Response
//

@implementation GTLRTPU_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_OperationMetadata
//

@implementation GTLRTPU_OperationMetadata
@dynamic apiVersion, cancelRequested, createTime, endTime, statusDetail, target,
         verb;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_Status
//

@implementation GTLRTPU_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRTPU_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTPU_Status_Details_Item
//

@implementation GTLRTPU_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end
