// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Android Device Provisioning Partner API (androiddeviceprovisioning/v1)
// Description:
//   Automates reseller integration into zero-touch enrollment by assigning
//   devices to customers and creating device reports.
// Documentation:
//   https://developers.google.com/zero-touch/

#import "GTLRAndroidProvisioningPartnerObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRAndroidProvisioningPartner_ClaimDeviceRequest.sectionType
NSString * const kGTLRAndroidProvisioningPartner_ClaimDeviceRequest_SectionType_SectionTypeUnspecified = @"SECTION_TYPE_UNSPECIFIED";
NSString * const kGTLRAndroidProvisioningPartner_ClaimDeviceRequest_SectionType_SectionTypeZeroTouch = @"SECTION_TYPE_ZERO_TOUCH";

// GTLRAndroidProvisioningPartner_DeviceClaim.sectionType
NSString * const kGTLRAndroidProvisioningPartner_DeviceClaim_SectionType_SectionTypeUnspecified = @"SECTION_TYPE_UNSPECIFIED";
NSString * const kGTLRAndroidProvisioningPartner_DeviceClaim_SectionType_SectionTypeZeroTouch = @"SECTION_TYPE_ZERO_TOUCH";

// GTLRAndroidProvisioningPartner_DevicesLongRunningOperationMetadata.processingStatus
NSString * const kGTLRAndroidProvisioningPartner_DevicesLongRunningOperationMetadata_ProcessingStatus_BatchProcessInProgress = @"BATCH_PROCESS_IN_PROGRESS";
NSString * const kGTLRAndroidProvisioningPartner_DevicesLongRunningOperationMetadata_ProcessingStatus_BatchProcessPending = @"BATCH_PROCESS_PENDING";
NSString * const kGTLRAndroidProvisioningPartner_DevicesLongRunningOperationMetadata_ProcessingStatus_BatchProcessProcessed = @"BATCH_PROCESS_PROCESSED";
NSString * const kGTLRAndroidProvisioningPartner_DevicesLongRunningOperationMetadata_ProcessingStatus_BatchProcessStatusUnspecified = @"BATCH_PROCESS_STATUS_UNSPECIFIED";

// GTLRAndroidProvisioningPartner_FindDevicesByOwnerRequest.sectionType
NSString * const kGTLRAndroidProvisioningPartner_FindDevicesByOwnerRequest_SectionType_SectionTypeUnspecified = @"SECTION_TYPE_UNSPECIFIED";
NSString * const kGTLRAndroidProvisioningPartner_FindDevicesByOwnerRequest_SectionType_SectionTypeZeroTouch = @"SECTION_TYPE_ZERO_TOUCH";

// GTLRAndroidProvisioningPartner_PartnerClaim.sectionType
NSString * const kGTLRAndroidProvisioningPartner_PartnerClaim_SectionType_SectionTypeUnspecified = @"SECTION_TYPE_UNSPECIFIED";
NSString * const kGTLRAndroidProvisioningPartner_PartnerClaim_SectionType_SectionTypeZeroTouch = @"SECTION_TYPE_ZERO_TOUCH";

// GTLRAndroidProvisioningPartner_PartnerUnclaim.sectionType
NSString * const kGTLRAndroidProvisioningPartner_PartnerUnclaim_SectionType_SectionTypeUnspecified = @"SECTION_TYPE_UNSPECIFIED";
NSString * const kGTLRAndroidProvisioningPartner_PartnerUnclaim_SectionType_SectionTypeZeroTouch = @"SECTION_TYPE_ZERO_TOUCH";

// GTLRAndroidProvisioningPartner_PerDeviceStatusInBatch.status
NSString * const kGTLRAndroidProvisioningPartner_PerDeviceStatusInBatch_Status_SingleDeviceStatusInvalidDeviceIdentifier = @"SINGLE_DEVICE_STATUS_INVALID_DEVICE_IDENTIFIER";
NSString * const kGTLRAndroidProvisioningPartner_PerDeviceStatusInBatch_Status_SingleDeviceStatusInvalidSectionType = @"SINGLE_DEVICE_STATUS_INVALID_SECTION_TYPE";
NSString * const kGTLRAndroidProvisioningPartner_PerDeviceStatusInBatch_Status_SingleDeviceStatusOtherError = @"SINGLE_DEVICE_STATUS_OTHER_ERROR";
NSString * const kGTLRAndroidProvisioningPartner_PerDeviceStatusInBatch_Status_SingleDeviceStatusPermissionDenied = @"SINGLE_DEVICE_STATUS_PERMISSION_DENIED";
NSString * const kGTLRAndroidProvisioningPartner_PerDeviceStatusInBatch_Status_SingleDeviceStatusSectionNotYours = @"SINGLE_DEVICE_STATUS_SECTION_NOT_YOURS";
NSString * const kGTLRAndroidProvisioningPartner_PerDeviceStatusInBatch_Status_SingleDeviceStatusSuccess = @"SINGLE_DEVICE_STATUS_SUCCESS";
NSString * const kGTLRAndroidProvisioningPartner_PerDeviceStatusInBatch_Status_SingleDeviceStatusUnknownError = @"SINGLE_DEVICE_STATUS_UNKNOWN_ERROR";
NSString * const kGTLRAndroidProvisioningPartner_PerDeviceStatusInBatch_Status_SingleDeviceStatusUnspecified = @"SINGLE_DEVICE_STATUS_UNSPECIFIED";

// GTLRAndroidProvisioningPartner_UnclaimDeviceRequest.sectionType
NSString * const kGTLRAndroidProvisioningPartner_UnclaimDeviceRequest_SectionType_SectionTypeUnspecified = @"SECTION_TYPE_UNSPECIFIED";
NSString * const kGTLRAndroidProvisioningPartner_UnclaimDeviceRequest_SectionType_SectionTypeZeroTouch = @"SECTION_TYPE_ZERO_TOUCH";

// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_ClaimDeviceRequest
//

@implementation GTLRAndroidProvisioningPartner_ClaimDeviceRequest
@dynamic customerId, deviceIdentifier, sectionType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_ClaimDeviceResponse
//

@implementation GTLRAndroidProvisioningPartner_ClaimDeviceResponse
@dynamic deviceId, deviceName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_ClaimDevicesRequest
//

@implementation GTLRAndroidProvisioningPartner_ClaimDevicesRequest
@dynamic claims;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"claims" : [GTLRAndroidProvisioningPartner_PartnerClaim class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_Company
//

@implementation GTLRAndroidProvisioningPartner_Company
@dynamic adminEmails, companyId, companyName, name, ownerEmails;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"adminEmails" : [NSString class],
    @"ownerEmails" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_CreateCustomerRequest
//

@implementation GTLRAndroidProvisioningPartner_CreateCustomerRequest
@dynamic customer;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_Device
//

@implementation GTLRAndroidProvisioningPartner_Device
@dynamic claims, configuration, deviceId, deviceIdentifier, deviceMetadata,
         name;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"claims" : [GTLRAndroidProvisioningPartner_DeviceClaim class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_DeviceClaim
//

@implementation GTLRAndroidProvisioningPartner_DeviceClaim
@dynamic ownerCompanyId, sectionType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_DeviceIdentifier
//

@implementation GTLRAndroidProvisioningPartner_DeviceIdentifier
@dynamic imei, manufacturer, meid, serialNumber;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_DeviceMetadata
//

@implementation GTLRAndroidProvisioningPartner_DeviceMetadata
@dynamic entries;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_DeviceMetadata_Entries
//

@implementation GTLRAndroidProvisioningPartner_DeviceMetadata_Entries

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_DevicesLongRunningOperationMetadata
//

@implementation GTLRAndroidProvisioningPartner_DevicesLongRunningOperationMetadata
@dynamic devicesCount, processingStatus, progress;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_DevicesLongRunningOperationResponse
//

@implementation GTLRAndroidProvisioningPartner_DevicesLongRunningOperationResponse
@dynamic perDeviceStatus, successCount;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"perDeviceStatus" : [GTLRAndroidProvisioningPartner_OperationPerDevice class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_Empty
//

@implementation GTLRAndroidProvisioningPartner_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_FindDevicesByDeviceIdentifierRequest
//

@implementation GTLRAndroidProvisioningPartner_FindDevicesByDeviceIdentifierRequest
@dynamic deviceIdentifier, limit, pageToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_FindDevicesByDeviceIdentifierResponse
//

@implementation GTLRAndroidProvisioningPartner_FindDevicesByDeviceIdentifierResponse
@dynamic devices, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"devices" : [GTLRAndroidProvisioningPartner_Device class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"devices";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_FindDevicesByOwnerRequest
//

@implementation GTLRAndroidProvisioningPartner_FindDevicesByOwnerRequest
@dynamic customerId, limit, pageToken, sectionType;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"customerId" : [NSNumber class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_FindDevicesByOwnerResponse
//

@implementation GTLRAndroidProvisioningPartner_FindDevicesByOwnerResponse
@dynamic devices, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"devices" : [GTLRAndroidProvisioningPartner_Device class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"devices";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_ListCustomersResponse
//

@implementation GTLRAndroidProvisioningPartner_ListCustomersResponse
@dynamic customers;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"customers" : [GTLRAndroidProvisioningPartner_Company class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_Operation
//

@implementation GTLRAndroidProvisioningPartner_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_Operation_Metadata
//

@implementation GTLRAndroidProvisioningPartner_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_Operation_Response
//

@implementation GTLRAndroidProvisioningPartner_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_OperationPerDevice
//

@implementation GTLRAndroidProvisioningPartner_OperationPerDevice
@dynamic claim, result, unclaim, updateMetadata;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_PartnerClaim
//

@implementation GTLRAndroidProvisioningPartner_PartnerClaim
@dynamic customerId, deviceIdentifier, deviceMetadata, sectionType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_PartnerUnclaim
//

@implementation GTLRAndroidProvisioningPartner_PartnerUnclaim
@dynamic deviceId, deviceIdentifier, sectionType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_PerDeviceStatusInBatch
//

@implementation GTLRAndroidProvisioningPartner_PerDeviceStatusInBatch
@dynamic deviceId, errorIdentifier, errorMessage, status;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_Status
//

@implementation GTLRAndroidProvisioningPartner_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRAndroidProvisioningPartner_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_Status_Details_Item
//

@implementation GTLRAndroidProvisioningPartner_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_UnclaimDeviceRequest
//

@implementation GTLRAndroidProvisioningPartner_UnclaimDeviceRequest
@dynamic deviceId, deviceIdentifier, sectionType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_UnclaimDevicesRequest
//

@implementation GTLRAndroidProvisioningPartner_UnclaimDevicesRequest
@dynamic unclaims;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"unclaims" : [GTLRAndroidProvisioningPartner_PartnerUnclaim class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_UpdateDeviceMetadataInBatchRequest
//

@implementation GTLRAndroidProvisioningPartner_UpdateDeviceMetadataInBatchRequest
@dynamic updates;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"updates" : [GTLRAndroidProvisioningPartner_UpdateMetadataArguments class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_UpdateDeviceMetadataRequest
//

@implementation GTLRAndroidProvisioningPartner_UpdateDeviceMetadataRequest
@dynamic deviceMetadata;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidProvisioningPartner_UpdateMetadataArguments
//

@implementation GTLRAndroidProvisioningPartner_UpdateMetadataArguments
@dynamic deviceId, deviceIdentifier, deviceMetadata;
@end
