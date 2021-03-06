// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   PageSpeed Insights API (pagespeedonline/v2)
// Description:
//   Analyzes the performance of a web page and provides tailored suggestions to
//   make that page faster.
// Documentation:
//   https://developers.google.com/speed/docs/insights/v2/getting-started

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRPagespeedonline_PagespeedApiFormatStringV2;
@class GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item;
@class GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item_Rects_Item;
@class GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item_SecondaryRects_Item;
@class GTLRPagespeedonline_PagespeedApiImageV2;
@class GTLRPagespeedonline_PagespeedApiImageV2_PageRect;
@class GTLRPagespeedonline_Result_FormattedResults;
@class GTLRPagespeedonline_Result_FormattedResults_RuleResults;
@class GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult;
@class GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult_UrlBlocks_Item;
@class GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult_UrlBlocks_Item_Urls_Item;
@class GTLRPagespeedonline_Result_PageStats;
@class GTLRPagespeedonline_Result_RuleGroups;
@class GTLRPagespeedonline_Result_RuleGroups_RuleGroup;
@class GTLRPagespeedonline_Result_Version;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  GTLRPagespeedonline_PagespeedApiFormatStringV2
 */
@interface GTLRPagespeedonline_PagespeedApiFormatStringV2 : GTLRObject

/** List of arguments for the format string. */
@property(nonatomic, strong, nullable) NSArray<GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item *> *args;

/**
 *  A localized format string with {{FOO}} placeholders, where 'FOO' is the key
 *  of the argument whose value should be substituted. For HYPERLINK arguments,
 *  the format string will instead contain {{BEGIN_FOO}} and {{END_FOO}} for the
 *  argument with key 'FOO'.
 */
@property(nonatomic, copy, nullable) NSString *format;

@end


/**
 *  GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item
 */
@interface GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item : GTLRObject

/** The placeholder key for this arg, as a string. */
@property(nonatomic, copy, nullable) NSString *key;

/**
 *  The screen rectangles being referred to, with dimensions measured in CSS
 *  pixels. This is only ever used for SNAPSHOT_RECT arguments. If this is
 *  absent for a SNAPSHOT_RECT argument, it means that that argument refers to
 *  the entire snapshot.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item_Rects_Item *> *rects;

/**
 *  Secondary screen rectangles being referred to, with dimensions measured in
 *  CSS pixels. This is only ever used for SNAPSHOT_RECT arguments.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item_SecondaryRects_Item *> *secondaryRects;

/**
 *  Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES, DURATION,
 *  VERBATIM_STRING, PERCENTAGE, HYPERLINK, or SNAPSHOT_RECT.
 */
@property(nonatomic, copy, nullable) NSString *type;

/** Argument value, as a localized string. */
@property(nonatomic, copy, nullable) NSString *value;

@end


/**
 *  GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item_Rects_Item
 */
@interface GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item_Rects_Item : GTLRObject

/**
 *  The height of the rect.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *height;

/**
 *  The left coordinate of the rect, in page coordinates.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *left;

/**
 *  The top coordinate of the rect, in page coordinates.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *top;

/**
 *  The width of the rect.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *width;

@end


/**
 *  GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item_SecondaryRects_Item
 */
@interface GTLRPagespeedonline_PagespeedApiFormatStringV2_Args_Item_SecondaryRects_Item : GTLRObject

/**
 *  The height of the rect.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *height;

/**
 *  The left coordinate of the rect, in page coordinates.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *left;

/**
 *  The top coordinate of the rect, in page coordinates.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *top;

/**
 *  The width of the rect.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *width;

@end


/**
 *  GTLRPagespeedonline_PagespeedApiImageV2
 */
@interface GTLRPagespeedonline_PagespeedApiImageV2 : GTLRObject

/**
 *  Image data base64 encoded.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *data;

/**
 *  Height of screenshot in pixels.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *height;

/** Unique string key, if any, identifying this image. */
@property(nonatomic, copy, nullable) NSString *key;

/** Mime type of image data (e.g. "image/jpeg"). */
@property(nonatomic, copy, nullable) NSString *mimeType;

/**
 *  The region of the page that is captured by this image, with dimensions
 *  measured in CSS pixels.
 */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_PagespeedApiImageV2_PageRect *pageRect;

/**
 *  Width of screenshot in pixels.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *width;

@end


/**
 *  The region of the page that is captured by this image, with dimensions
 *  measured in CSS pixels.
 */
@interface GTLRPagespeedonline_PagespeedApiImageV2_PageRect : GTLRObject

/**
 *  The height of the rect.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *height;

/**
 *  The left coordinate of the rect, in page coordinates.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *left;

/**
 *  The top coordinate of the rect, in page coordinates.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *top;

/**
 *  The width of the rect.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *width;

@end


/**
 *  GTLRPagespeedonline_Result
 */
@interface GTLRPagespeedonline_Result : GTLRObject

/**
 *  Localized PageSpeed results. Contains a ruleResults entry for each PageSpeed
 *  rule instantiated and run by the server.
 */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_Result_FormattedResults *formattedResults;

/**
 *  Canonicalized and final URL for the document, after following page redirects
 *  (if any).
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  List of rules that were specified in the request, but which the server did
 *  not know how to instantiate.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *invalidRules;

/** Kind of result. */
@property(nonatomic, copy, nullable) NSString *kind;

/**
 *  Summary statistics for the page, such as number of JavaScript bytes, number
 *  of HTML bytes, etc.
 */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_Result_PageStats *pageStats;

/**
 *  Response code for the document. 200 indicates a normal page load. 4xx/5xx
 *  indicates an error.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *responseCode;

/** A map with one entry for each rule group in these results. */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_Result_RuleGroups *ruleGroups;

/** Base64-encoded screenshot of the page that was analyzed. */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_PagespeedApiImageV2 *screenshot;

/** Title of the page, as displayed in the browser's title bar. */
@property(nonatomic, copy, nullable) NSString *title;

/** The version of PageSpeed used to generate these results. */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_Result_Version *version;

@end


/**
 *  Localized PageSpeed results. Contains a ruleResults entry for each PageSpeed
 *  rule instantiated and run by the server.
 */
@interface GTLRPagespeedonline_Result_FormattedResults : GTLRObject

/** The locale of the formattedResults, e.g. "en_US". */
@property(nonatomic, copy, nullable) NSString *locale;

/**
 *  Dictionary of formatted rule results, with one entry for each PageSpeed rule
 *  instantiated and run by the server.
 */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_Result_FormattedResults_RuleResults *ruleResults;

@end


/**
 *  Summary statistics for the page, such as number of JavaScript bytes, number
 *  of HTML bytes, etc.
 */
@interface GTLRPagespeedonline_Result_PageStats : GTLRObject

/**
 *  Number of uncompressed response bytes for CSS resources on the page.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *cssResponseBytes;

/**
 *  Number of response bytes for flash resources on the page.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *flashResponseBytes;

/**
 *  Number of uncompressed response bytes for the main HTML document and all
 *  iframes on the page.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *htmlResponseBytes;

/**
 *  Number of response bytes for image resources on the page.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *imageResponseBytes;

/**
 *  Number of uncompressed response bytes for JS resources on the page.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *javascriptResponseBytes;

/**
 *  Number of CSS resources referenced by the page.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *numberCssResources;

/**
 *  Number of unique hosts referenced by the page.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *numberHosts;

/**
 *  Number of JavaScript resources referenced by the page.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *numberJsResources;

/**
 *  Number of HTTP resources loaded by the page.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *numberResources;

/**
 *  Number of static (i.e. cacheable) resources on the page.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *numberStaticResources;

/**
 *  Number of response bytes for other resources on the page.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *otherResponseBytes;

/**
 *  Number of uncompressed response bytes for text resources not covered by
 *  other statistics (i.e non-HTML, non-script, non-CSS resources) on the page.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *textResponseBytes;

/**
 *  Total size of all request bytes sent by the page.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *totalRequestBytes;

@end


/**
 *  A map with one entry for each rule group in these results.
 *
 *  @note This class is documented as having more properties of
 *        GTLRPagespeedonline_Result_RuleGroups_RuleGroup. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLRPagespeedonline_Result_RuleGroups : GTLRObject
@end


/**
 *  The version of PageSpeed used to generate these results.
 */
@interface GTLRPagespeedonline_Result_Version : GTLRObject

/**
 *  The major version number of PageSpeed used to generate these results.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *major;

/**
 *  The minor version number of PageSpeed used to generate these results.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *minor;

@end


/**
 *  Dictionary of formatted rule results, with one entry for each PageSpeed rule
 *  instantiated and run by the server.
 *
 *  @note This class is documented as having more properties of
 *        GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult.
 *        Use @c -additionalJSONKeys and @c -additionalPropertyForName: to get
 *        the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRPagespeedonline_Result_FormattedResults_RuleResults : GTLRObject
@end


/**
 *  The name of this rule group: one of "SPEED" or "USABILITY".
 */
@interface GTLRPagespeedonline_Result_RuleGroups_RuleGroup : GTLRObject

/**
 *  The score (0-100) for this rule group, which indicates how much better a
 *  page could be in that category (e.g. how much faster, or how much more
 *  usable). A high score indicates little room for improvement, while a lower
 *  score indicates more room for improvement.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *score;

@end


/**
 *  The enum-like identifier for this rule. For instance "EnableKeepAlive" or
 *  "AvoidCssImport". Not localized.
 */
@interface GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult : GTLRObject

/**
 *  List of rule groups that this rule belongs to. Each entry in the list is one
 *  of "SPEED" or "USABILITY".
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *groups;

/** Localized name of the rule, intended for presentation to a user. */
@property(nonatomic, copy, nullable) NSString *localizedRuleName;

/**
 *  The impact (unbounded floating point value) that implementing the
 *  suggestions for this rule would have on making the page faster. Impact is
 *  comparable between rules to determine which rule's suggestions would have a
 *  higher or lower impact on making a page faster. For instance, if enabling
 *  compression would save 1MB, while optimizing images would save 500kB, the
 *  enable compression rule would have 2x the impact of the image optimization
 *  rule, all other things being equal.
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *ruleImpact;

/**
 *  A brief summary description for the rule, indicating at a high level what
 *  should be done to follow the rule and what benefit can be gained by doing
 *  so.
 */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_PagespeedApiFormatStringV2 *summary;

/**
 *  List of blocks of URLs. Each block may contain a heading and a list of URLs.
 *  Each URL may optionally include additional details.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult_UrlBlocks_Item *> *urlBlocks;

@end


/**
 *  GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult_UrlBlocks_Item
 */
@interface GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult_UrlBlocks_Item : GTLRObject

/** Heading to be displayed with the list of URLs. */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_PagespeedApiFormatStringV2 *header;

/**
 *  List of entries that provide information about URLs in the url block.
 *  Optional.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult_UrlBlocks_Item_Urls_Item *> *urls;

@end


/**
 *  GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult_UrlBlocks_Item_Urls_Item
 */
@interface GTLRPagespeedonline_Result_FormattedResults_RuleResults_RuleResult_UrlBlocks_Item_Urls_Item : GTLRObject

/**
 *  List of entries that provide additional details about a single URL.
 *  Optional.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRPagespeedonline_PagespeedApiFormatStringV2 *> *details;

/**
 *  A format string that gives information about the URL, and a list of
 *  arguments for that format string.
 */
@property(nonatomic, strong, nullable) GTLRPagespeedonline_PagespeedApiFormatStringV2 *result;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
