#import "sybase_sup.h"

#import "SUPClassWithMetaData.h"
#import "SUPAbstractROEntity.h"
#import "SUPLocalBusinessObject.h"
#import "SUPLocalEntityDelegate.h"

#import "SUPOperationReplay.h"


@class SUPEntityMetaDataRBS;
@class SUPLocalEntityDelegate;
@class SUPClassMetaDataRBS;

// public interface declaration, can be used by application. 
/*!
 @class MedSalesOperationReplay
 @abstract This class is part of package "MedSales:1.0"
 @discussion Generated by Sybase Unwired Platform, compiler version 2.1.3.231
*/

@interface MedSalesOperationReplay : SUPAbstractROEntity<SUPOperationReplay, SUPClassWithMetaData>
{
@private
    NSString* _remoteId;
    NSString* _component;
    NSString* _entityKey;
    NSString* _attributes;
    NSString* _operation;
    NSString* _parameters;
    NSString* _replayLog;
    NSString* _exception;
    BOOL _completed;
    int64_t _requestId;
}

@property(retain,nonatomic) NSString* remoteId;
@property(retain,nonatomic) NSString* component;
@property(retain,nonatomic) NSString* entityKey;
@property(retain,nonatomic) NSString* attributes;
@property(retain,nonatomic) NSString* operation;
@property(retain,nonatomic) NSString* parameters;
@property(retain,nonatomic) NSString* replayLog;
@property(retain,nonatomic) NSString* exception;
@property(assign,nonatomic) BOOL completed;
@property(assign,nonatomic) int64_t requestId;

+ (SUPEntityMetaDataRBS*)metaData;
+ (SUPLocalEntityDelegate *)delegate;
/*!
  @method 
  @abstract Sets relationship attributes to null to save memory (they will be retrieved from the DB on the next getter call or property reference)
  @discussion
  @throws SUPPersistenceException
 */
- (void)clearRelationshipObjects;
- (id) init;
- (void)dealloc;
/*!
  @method 
  @abstract Returns the entity for the primary key value passed in, or null if the entity is not found.
  @discussion
  @throws SUPPersistenceException
 */
+ (MedSalesOperationReplay*)find:(int64_t)id_;
/*!
  @method 
  @abstract Returns the primary key for this entity.
  @discussion
 */
- (int64_t)_pk;
/*!
  @method 
  @abstract Returns the entity for the primary key value passed in; throws an exception if the entity is not found.
  @discussion
  @throws SUPPersistenceException
 */
+ (MedSalesOperationReplay*)load:(int64_t)id;
/*!
  @method 
  @abstract Returns an SUPObjectList of log records for this entity.
  @discussion
  @throws SUPPersistenceException
 */
- (SUPObjectList*)getLogRecords;
/*!
  @method 
  @abstract Creates a new autoreleased instance of this class
  @discussion
 */
+ (MedSalesOperationReplay*)getInstance;
/*!
  @method 
  @abstract Return a string description of this entity.
  @discussion
 */
- (NSString*)toString;
/*!
  @method 
  @abstract Return a string description of this entity.
  @discussion
 */
- (NSString*)description;
+ (SUPObjectList*)getPendingObjects;
+ (SUPObjectList*)getPendingObjects:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated class method 
  @throws SUPPersistenceException
 */
+ (void)replay;
/*!
  @method
  @abstract Generated instance method 
  @throws SUPPersistenceException
 */
- (void)mbsReplay;
/*!
  @method
  @abstract Generated instance method 
  @throws SUPPersistenceException
 */
- (void)saveErrorInfo;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param remoteId
  @throws SUPPersistenceException
 */

+ (SUPObjectList*)findReadyToReplay:(NSString*)remoteId;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param remoteId
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPObjectList*)findReadyToReplay:(NSString*)remoteId skip:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param remoteId
  @throws SUPPersistenceException
 */

+ (SUPObjectList*)findAsyncOperationToReplay:(NSString*)remoteId;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param remoteId
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPObjectList*)findAsyncOperationToReplay:(NSString*)remoteId skip:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @throws SUPPersistenceException
 */

+ (SUPObjectList*)findReadyToFinish;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPObjectList*)findReadyToFinish:(int32_t)skip take:(int32_t)take;


@end
typedef SUPObjectList MedSalesOperationReplayList;

// internal methods declaration, only used by generated code.
@interface MedSalesOperationReplay(internal)


- (SUPJsonObject*)getAttributeJson:(int)id_;
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value;

-(SUPLong) getAttributeLong:(int)id_;
-(void) setAttributeLong:(int)id_:(SUPLong)v;
-(SUPString) getAttributeNullableString:(int)id_;
-(void) setAttributeNullableString:(int)id_:(SUPString)v;
-(SUPString) getAttributeString:(int)id_;
-(void) setAttributeString:(int)id_:(SUPString)v;
-(SUPBoolean) getAttributeBoolean:(int)id_;
-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v;
@end