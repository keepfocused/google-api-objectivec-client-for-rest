// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Consumer Surveys API (consumersurveys/v2)
// Description:
//   Creates and conducts surveys, lists the surveys that an authenticated user
//   owns, and retrieves survey results and information about specified surveys.

#import "GTLRConsumerSurveysQuery.h"

#import "GTLRConsumerSurveysObjects.h"

@implementation GTLRConsumerSurveysQuery

@dynamic fields;

@end

@implementation GTLRConsumerSurveysQuery_MobileapppanelsGet

@dynamic panelId;

+ (instancetype)queryWithPanelId:(NSString *)panelId {
  NSArray *pathParams = @[ @"panelId" ];
  NSString *pathURITemplate = @"mobileAppPanels/{panelId}";
  GTLRConsumerSurveysQuery_MobileapppanelsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.panelId = panelId;
  query.expectedObjectClass = [GTLRConsumerSurveys_MobileAppPanel class];
  query.loggingName = @"consumersurveys.mobileapppanels.get";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_MobileapppanelsList

@dynamic maxResults, startIndex, token;

+ (instancetype)query {
  NSString *pathURITemplate = @"mobileAppPanels";
  GTLRConsumerSurveysQuery_MobileapppanelsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRConsumerSurveys_MobileAppPanelsListResponse class];
  query.loggingName = @"consumersurveys.mobileapppanels.list";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_MobileapppanelsUpdate

@dynamic panelId;

+ (instancetype)queryWithObject:(GTLRConsumerSurveys_MobileAppPanel *)object
                        panelId:(NSString *)panelId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"panelId" ];
  NSString *pathURITemplate = @"mobileAppPanels/{panelId}";
  GTLRConsumerSurveysQuery_MobileapppanelsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.panelId = panelId;
  query.expectedObjectClass = [GTLRConsumerSurveys_MobileAppPanel class];
  query.loggingName = @"consumersurveys.mobileapppanels.update";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_ResultsGet

@dynamic surveyUrlId;

+ (instancetype)queryWithObject:(GTLRConsumerSurveys_ResultsGetRequest *)object
                    surveyUrlId:(NSString *)surveyUrlId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"surveyUrlId" ];
  NSString *pathURITemplate = @"surveys/{surveyUrlId}/results";
  GTLRConsumerSurveysQuery_ResultsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.surveyUrlId = surveyUrlId;
  query.expectedObjectClass = [GTLRConsumerSurveys_SurveyResults class];
  query.loggingName = @"consumersurveys.results.get";
  return query;
}

+ (instancetype)queryForMediaWithObject:(GTLRConsumerSurveys_ResultsGetRequest *)object
                            surveyUrlId:(NSString *)surveyUrlId {
  GTLRConsumerSurveysQuery_ResultsGet *query =
    [self queryWithObject:object
              surveyUrlId:surveyUrlId];
  query.downloadAsDataObjectType = @"media";
  query.loggingName = @"Download consumersurveys.results.get";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_SurveysDelete

@dynamic surveyUrlId;

+ (instancetype)queryWithSurveyUrlId:(NSString *)surveyUrlId {
  NSArray *pathParams = @[ @"surveyUrlId" ];
  NSString *pathURITemplate = @"surveys/{surveyUrlId}";
  GTLRConsumerSurveysQuery_SurveysDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.surveyUrlId = surveyUrlId;
  query.expectedObjectClass = [GTLRConsumerSurveys_SurveysDeleteResponse class];
  query.loggingName = @"consumersurveys.surveys.delete";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_SurveysGet

@dynamic surveyUrlId;

+ (instancetype)queryWithSurveyUrlId:(NSString *)surveyUrlId {
  NSArray *pathParams = @[ @"surveyUrlId" ];
  NSString *pathURITemplate = @"surveys/{surveyUrlId}";
  GTLRConsumerSurveysQuery_SurveysGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.surveyUrlId = surveyUrlId;
  query.expectedObjectClass = [GTLRConsumerSurveys_Survey class];
  query.loggingName = @"consumersurveys.surveys.get";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_SurveysInsert

+ (instancetype)queryWithObject:(GTLRConsumerSurveys_Survey *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"surveys";
  GTLRConsumerSurveysQuery_SurveysInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRConsumerSurveys_Survey class];
  query.loggingName = @"consumersurveys.surveys.insert";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_SurveysList

@dynamic maxResults, startIndex, token;

+ (instancetype)query {
  NSString *pathURITemplate = @"surveys";
  GTLRConsumerSurveysQuery_SurveysList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRConsumerSurveys_SurveysListResponse class];
  query.loggingName = @"consumersurveys.surveys.list";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_SurveysStart

@dynamic resourceId;

+ (instancetype)queryWithObject:(GTLRConsumerSurveys_SurveysStartRequest *)object
                     resourceId:(NSString *)resourceId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resourceId" ];
  NSString *pathURITemplate = @"surveys/{resourceId}/start";
  GTLRConsumerSurveysQuery_SurveysStart *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resourceId = resourceId;
  query.expectedObjectClass = [GTLRConsumerSurveys_SurveysStartResponse class];
  query.loggingName = @"consumersurveys.surveys.start";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_SurveysStop

@dynamic resourceId;

+ (instancetype)queryWithResourceId:(NSString *)resourceId {
  NSArray *pathParams = @[ @"resourceId" ];
  NSString *pathURITemplate = @"surveys/{resourceId}/stop";
  GTLRConsumerSurveysQuery_SurveysStop *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.resourceId = resourceId;
  query.expectedObjectClass = [GTLRConsumerSurveys_SurveysStopResponse class];
  query.loggingName = @"consumersurveys.surveys.stop";
  return query;
}

@end

@implementation GTLRConsumerSurveysQuery_SurveysUpdate

@dynamic surveyUrlId;

+ (instancetype)queryWithObject:(GTLRConsumerSurveys_Survey *)object
                    surveyUrlId:(NSString *)surveyUrlId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"surveyUrlId" ];
  NSString *pathURITemplate = @"surveys/{surveyUrlId}";
  GTLRConsumerSurveysQuery_SurveysUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.surveyUrlId = surveyUrlId;
  query.expectedObjectClass = [GTLRConsumerSurveys_Survey class];
  query.loggingName = @"consumersurveys.surveys.update";
  return query;
}

@end
