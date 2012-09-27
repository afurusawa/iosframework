/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "MedSalesMedSalesDB.h"

#import "MedSalesAccounts.h"
#import "MedSalesInventory.h"
#import "MedSalesOrganizations.h"
#import "MedSalesSurgeons.h"
#import "MedSalesLogRecordImpl.h"
#import "MedSalesOperationReplay.h"
#import "MedSalesSISSubscriptionKey.h"
#import "MedSalesSISSubscription.h"
#import "MedSalesPackageProperties.h"
#import "MedSalesChangeLogKey.h"
#import "MedSalesChangeLogImpl.h"
#import "MedSalesOfflineAuthentication.h"
#import "MedSalesKeyPackageName.h"
#import "MedSalesPersonalizationParameters.h"
#import "MedSalesKeyGenerator.h"
#import "MedSalesKeyGeneratorPK.h"
#import "MedSalesLocalKeyGenerator.h"
#import "MedSalesLocalKeyGeneratorPK.h"
#import "MBODebugLogger.h"
#import "SUPEntityMessageListener.h"
#import "SUPStringList.h"
#import "SUPJsonObject.h"
#import "SUPQueueConnectionImpl.h"
#import "SUPMessageLiterals.h"
#import "MedSalesLoggerImpl.h"
#import "SUPJsonString.h"
#import "SUPEntityMap.h"
#import "SUPClassMap.h"
#import "SUPSynchronizationAction.h"
#import "SUPSynchronizationGroup.h"
#import "SUPSynchronizationContext.h"
#import "SUPSynchronizationStatus.h"
#import "SUPDatabaseDelegate.h"
#import "SUPResultSetWrapper.h"
#import "SUPAbstractDBRBS.h"
#import "SUPAbstractPersonalizationParameters.h"
#import "SUPDatabaseManagerFactory.h"

@interface MedSalesMedSalesDB(hidden)
- (id)init;
- (id)initWithName:(NSString*)name;
// singleton
+ (MedSalesMedSalesDB*)instance;
+ (id)allocWithZone:(NSZone *)zone;
- (id)copyWithZone:(NSZone *)zone;
- (id)retain;
- (unsigned)retainCount;
- (void)release;
- (id)autorelease;
- (void)defineMessageListenerForEntity:(NSString*)entityName withClass:(Class)entityClass;
- (NSString*)packageVersionedPrefix;
- (BOOL)checkPending_Accounts;
- (BOOL)checkPending_Inventory;
- (BOOL)checkPending_Organizations;
- (BOOL)checkPending_Surgeons;
- (BOOL)checkPending_LogRecordImpl;
- (BOOL)checkPending_PackageProperties;
- (BOOL)checkAllReplayPending;
- (void)writeLogFromHeader:(SUPJsonObject*)o:(SUPNullableString)mbo:(SUPNullableString)method;
- (NSString *)ppmHeader;
+ (void)replay:(NSString *)mbo withId:(int64_t)counter withContent:(SUPJsonArray*)content;
+ (void)search:(NSString *)mbo withId:(int64_t)counter withContent:(SUPJsonArray*)content;
+ (void)waitForKeyGenerator;
@end
@implementation MedSalesMedSalesDB

static MedSalesMedSalesDB *instance = nil;
 
+ (MedSalesMedSalesDB*)instance
{
    @synchronized(self) {
        if (instance == nil) {
            // Singleton is never released
            instance = [[super allocWithZone:NULL] init];
        }
    }
    return instance;
}
 
+ (id)allocWithZone:(NSZone *)zone
{
    return [[self instance] retain];
}
 
- (id)copyWithZone:(NSZone *)zone
{
    return self;
}
 
- (id)retain
{
    return self;
}
 
- (unsigned)retainCount
{
    return NSUIntegerMax;  //denotes an object that cannot be released
}
 
- (oneway void)release
{
    //do nothing
}
 
- (id)autorelease
{
    return self;
}

+ (void)initialize
{
	[self metaData];
	[self delegate];
}

static SUPDatabaseDelegate *g_MedSalesMedSalesDB_delegate = nil;

+ (SUPDatabaseDelegate *) delegate
{
	@synchronized(self) {
		if (g_MedSalesMedSalesDB_delegate == nil) {
			g_MedSalesMedSalesDB_delegate = [[SUPDatabaseDelegate alloc] initWithDatabase:[self instance]];
		}
	}
	
	return [[g_MedSalesMedSalesDB_delegate retain] autorelease];
}

- (id)init
{
    return [self initWithName:@"medSales1_0"];
}

- (id)initWithName:(NSString*)name;
{
    if ((self = [super initWithName:name]))
    {
        self.manager = [SUPDatabaseManagerFactory dbManagerOfType:SUPDatabaseManager_UltraLite];
    	self->_concreteSubclass = [self class];
    	
   	    [self defineMessageListenerForEntity:@"Accounts" withClass:[MedSalesAccounts class]];
   	    [self defineMessageListenerForEntity:@"Inventory" withClass:[MedSalesInventory class]];
   	    [self defineMessageListenerForEntity:@"Organizations" withClass:[MedSalesOrganizations class]];
   	    [self defineMessageListenerForEntity:@"Surgeons" withClass:[MedSalesSurgeons class]];
   	    [self defineMessageListenerForEntity:@"LogRecordImpl" withClass:[MedSalesLogRecordImpl class]];
   	    [self defineMessageListenerForEntity:@"OperationReplay" withClass:[MedSalesOperationReplay class]];
   	    [self defineMessageListenerForEntity:@"SISSubscription" withClass:[MedSalesSISSubscription class]];
   	    [self defineMessageListenerForEntity:@"PackageProperties" withClass:[MedSalesPackageProperties class]];
   	    [self defineMessageListenerForEntity:@"ChangeLogImpl" withClass:[MedSalesChangeLogImpl class]];
   	    [self defineMessageListenerForEntity:@"OfflineAuthentication" withClass:[MedSalesOfflineAuthentication class]];
   	    [self defineMessageListenerForEntity:@"KeyGenerator" withClass:[MedSalesKeyGenerator class]];

    	// set the logger
    	[self setLogger:[[[MedSalesLoggerImpl alloc] init] autorelease]];
        //self.pid = [NSString stringWithFormat:@"moca://%@", [SUPMessageClient getDeviceID]];
        [self.connectionProfile setPageSize:16384];
        SUPConnectionProfile *sp = [self.connectionProfile syncProfile];
        [sp setDomainName:@"default"];
        [sp setServerName:@"RAPIDEDGE860"];
        [sp setPortNumber:2480];
        [sp setNetworkProtocol:@"http,https"];
        [sp setNetworkStreamParams:@"trusted_certificates=;url_suffix="];
        [sp applyPropertiesFromApplication];
 	}

    return self;
    
}

- (void)defineMessageListenerForEntity:(NSString*)entityName withClass:(Class)entityClass
{
    SUPEntityMessageListener* listener = [[SUPEntityMessageListener alloc] initWithClass:entityClass];
    [listener autorelease];
    [_messageListenerMap add:(id)entityName:(id)listener];
}

- (NSString*)packageVersionedPrefix
{
	return @"MedSales:1.0";
}

- (NSString*)syncParamsVersion
{
    return [NSString stringWithFormat:@"%@_medsales.1_0", [[self class] getDomainName]];
}

+ (NSString*)getSyncUsername
{
    return [[self delegate] getSyncUsername];
}

+ (NSString*)getPackageName
{
	return [[self instance] packageVersionedPrefix];
}

+ (NSString*)getDomainName
{
	return [[self delegate] getDomainName];
}

+ (NSString*)defaultDomainName
{
	return @"default";
}

+ (int32_t)getSchemaVersion
{
	return [[self delegate] getSchemaVersion];
}

+ (int32_t)getProtocolVersion
{
	return [[self delegate] getProtocolVersion];
}

static SUPDatabaseMetaDataRBS* MedSalesMedSalesDB_META_DATA;
static BOOL _valid_ = NO;

+ (SUPDatabaseMetaDataRBS*)metaData
{
    if (! (_valid_))
    {
		MedSalesMedSalesDB_META_DATA = [[MedSalesMedSalesDBMetaData alloc] init];
     	_valid_ = YES;
	}
	
	return MedSalesMedSalesDB_META_DATA;
}

+ (MedSalesPersonalizationParameters*)getPersonalizationParameters
{
    return (MedSalesPersonalizationParameters*)( ((SUPDatabaseDelegate *)[self delegate]).personalizationParameters);
}

- (NSObject<SUPQueueConnection>*)queueConnection
{
    if (_queueConnection == nil)
    {
        self.queueConnection = [SUPQueueConnectionImpl getInstance:nil withPackage:@"MedSales:1.0"];
    }
    return _queueConnection;
}

+ (id<SUPReadWriteLockManager>)dblock
{
    return [[self instance] dblock];
}
+ (SUPLocalTransaction*)beginTransaction
{
    return [[self instance] beginTransaction];
}

+ (NSObject<SUPCallbackHandler>*)callbackHandler
{
    return [[self instance] callbackHandler];
}

+ (SUPConnectionProfile*)connectionProfile
{
    return [[self instance] connectionProfile];
}

+ (SUPConnectionProfile*)getConnectionProfile
{
    return [[self instance] connectionProfile];
}

+ (SUPConnectionProfile*)getSynchronizationProfile
{
    return [[[self instance] connectionProfile] syncProfile];
}

+ (void)checkIfSubscribed
{
	if(([[self instance] packageIsSubscribed]) || ([[self instance] packageIsSubscribePending]))
		return;
	else
		@throw [SUPPersistenceException withMessage:@"Package is not subscribed"];
}

+ (void)clearConnection
{
    [[self instance] clearConnection];
    [[self instance] setManager:nil];
}

+ (void)createDatabase
{
    [[MedSalesMedSalesDB delegate] createDatabase];
}

+ (void)deleteDatabase
{
    [[self instance] deleteDatabase];
}

+ (BOOL)databaseExists
{
    return [[self instance] databaseExists];
}

+ (id<SUPConnectionWrapper>)getConnectionWrapper
{
    return [[self instance] getConnectionWrapper];
}

+ (void)openConnection
{
    [[self instance] getConnectionWrapper];
}

+ (void)closeConnection
{
    [[self instance] closeConnection];
    [[self instance] setManager:nil];
}

+ (id<SUPLogger>)getLogger
{
	return [[self instance] logger];
}

+ (id<SUPSynchronizationGroup>) getSynchronizationGroup:(NSString*)syncGroup
{
    return [g_MedSalesMedSalesDB_delegate getSynchronizationGroup:syncGroup];
}

+ (SUPQueryResultSet*)executeQuery:(SUPQuery*)query
{
	return [[self instance] executeQuery:[self metaData] query:query];
}

+ (void)onMessage:(SUPJsonMessage*)message
{
    [[self instance] onMessage:message];
}

+ (BOOL)packageHasSubscription
{
	return (([[self instance] packageIsSubscribed]) || ([[self instance] packageIsSubscribePending]))
	;
}

+ (id<SUPQueueConnection>)queueConnection
{
    return [[self instance] queueConnection];
}

+ (void)recover
{
    [[self instance] recover];
}

+ (void)registerCallbackHandler:(NSObject<SUPCallbackHandler>*)handler
{
    [[self instance] registerCallbackHandler:handler];
}

+ (void)resumeSubscription
{
    [[self instance] resume];
}

+ (void)setApplication:(SUPApplication*)application
{
    [[self instance] startBackgroundSynchronization];
}

+ (void)startBackgroundSynchronization
{
    [[self instance] startBackgroundSynchronization];
}

+ (void)stopBackgroundSynchronization
{
    [[self instance] stopBackgroundSynchronization];
}

+ (void)submitPendingOperations
{
	[self submitPendingOperations:nil];
}

+ (void)submitPendingOperations:(NSString*)synchronizationGroup
{
	[[MedSalesMedSalesDB delegate] submitPendingOperations:synchronizationGroup];
}

+ (void)cancelPendingOperations
{
	[self cancelPendingOperations:nil];
}

+ (void)cancelPendingOperations:(NSString*)synchronizationGroup
{
	[[MedSalesMedSalesDB delegate] cancelPendingOperations:synchronizationGroup];
}

+ (void)subscribe
{
	[[self delegate] subscribe];
}

+ (void)beginSynchronize:(SUPObjectList*)synchronizationGroups withContext:(NSString*)context withUploadOnly:(BOOL) uploadOnly
{
	[[self delegate] beginSynchronizeForGroups:synchronizationGroups withContext:context withUploadOnly:uploadOnly];
}

+ (void)beginSynchronize:(SUPObjectList*)synchronizationGroups withContext:(NSString*)context;
{
	[[self delegate] beginSynchronizeForGroups:synchronizationGroups withContext:context];
}

+ (void)suspendSubscription
{
    [[self delegate] suspendSubscription];
}

+ (void)unsubscribe
{
    [[self delegate] unsubscribe];
}

+ (void)replay:(NSString *)mbo withId:(int64_t)counter withContent:(SUPJsonArray*)content
{
    [[self instance] replay:mbo withId:counter withContent:content];
}

+ (void)search:(NSString *)mbo withId:(int64_t)counter withContent:(SUPJsonArray*)content
{
    [[self instance] search:mbo withId:counter withContent:content];
}

+ (void)setNeedSync
{
    [[self instance] setNeedSync];
}

+ (void)synchronizeIfNeeded
{
    [[self instance] synchronizeIfNeeded];
}

+ (BOOL)hasPendingOperations
{
	return [[self instance] checkAllReplayPending];
}

+ (void)synchronize
{
    
	[[self delegate] synchronize];
}
+ (void)synchronize:(NSString*)synchronizationGroup
{
    [[self delegate] synchronize:synchronizationGroup];
}
+ (void)synchronizeWithListener:(id<SUPSyncStatusListener>) listener
{
    [[self delegate] synchronizeWithListener:listener];
}
+ (void)synchronize:(NSString *)synchronizationGroup withListener:(id<SUPSyncStatusListener>)listener
{
    [[self delegate] synchronize:synchronizationGroup withListener:listener];
}

+ (SUPOnlineLoginStatus*)getOnlineLoginStatus
{
	
	[self doesNotRecognizeSelector:_cmd];
	return nil;
	// this is for MBS
	//return [[self instance] onlineLoginStatus];
}

+ (void)generateEncryptionKey
{
    [[self delegate] generateEncryptionKey];
}

+ (void)changeEncryptionKey:(NSString *)newKey
{
    [[self instance] changeEncryptionKey:newKey];
}

+ (void)cleanAllData:(BOOL) keepClientOnly
{
	[[self delegate] cleanAllData:keepClientOnly];
}

+ (void)cleanAllData
{
	[[self delegate] cleanAllData];
}
/* not supported RBS
+ (BOOL)isSubscribed
{
	return ([[self instance] packageIsSubscribed] || [[self instance] packageIsSubscribePending]);
}
*/
+ (BOOL) isReplayQueueEmpty
{
	return [[self delegate] isReplayQueueEmpty];
}
+ (SUPObjectList*) getBackgroundSyncRequests
{
	return [[self delegate] getBackgroundSyncRequests];
}

+ (void) enableChangeLog
{
    [[self getSynchronizationProfile] setString:@"changeLogEnabled":@"true"];
}

+ (void) disableChangeLog
{
    [[self getSynchronizationProfile] setString:@"changeLogEnabled":@"false"];
}

+ (SUPObjectList*) getChangeLogs:(SUPQuery*)query
{
   return [[self delegate] getChangeLogs:query];
}

+ (void) deleteChangeLogs
{
    return [MedSalesChangeLogImpl deleteChangeLogs];
}

+ (void) onlineLogin
{
 
        NSString *username = [[self getSynchronizationProfile] getUser];
        NSString *password = [[self getSynchronizationProfile] getPassword];
        [[self delegate] onlineLogin:username password:password];   
}

+ (void)writeLogFromHeader:(SUPJsonObject*)o:(SUPNullableString)mbo:(SUPNullableString)method
{
#if 0
	// if server sent level attribute as string, change it to integer before reading JSON
	id levelObject = [o item:@"level"];
    if (((levelObject != nil)) && ([levelObject isKindOfClass:[SUPJsonString class]]))
    {
        SUPJsonString* js = ((SUPJsonString*)(levelObject));
        [o setInt:@"level":[SUPLogLevel fromString:js.value]];
    }
	MedSalesLogRecordImpl *log = [[MedSalesLogRecordImpl alloc] initFromJson:o :0];
	if (!([o containsKey:@"messageId"]))
	{
		SUPObjectList *klist = [MedSalesKeyGenerator findAll];
		if([klist size] > 0)
			log.messageId = [MedSalesKeyGenerator generateId];
		else
			log.messageId = [MedSalesLocalKeyGenerator generateId];
	}
	if(log.component == nil) log.component = ((mbo != nil) ? mbo : @"MedSalesDB");
	if(log.operation == nil) log.operation = method;
	if(log.requestId == nil) log.requestId = [NSString stringWithFormat:@"%ld",log.messageId];
	if(log.timestamp == nil) log.timestamp = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
	[log createPending:NO];
	[log autorelease];
#endif
}

+ (SUPObjectList*)getLogRecords:(SUPQuery*)query
{
	// If query is nil, create an empty one and findWithQuery will get all the records
	if(query == nil)
		query = [SUPQuery getInstance];
    return (SUPObjectList*)[MedSalesLogRecordImpl findWithQuery:query];
}

+ (void)submitLogRecords
{
    [MedSalesLogRecordImpl submitPendingOperations];
}

- (void)createDatabase
{
	[[MedSalesMedSalesDB delegate] createDatabase];
}

- (BOOL)checkPending_Accounts
{  
    return NO;
}
- (BOOL)checkPending_Inventory
{  
    return NO;
}
- (BOOL)checkPending_Organizations
{  
    return NO;
}
- (BOOL)checkPending_Surgeons
{  
    return NO;
}
- (BOOL)checkPending_LogRecordImpl
{  
    return NO;
}
- (BOOL)checkPending_PackageProperties
{  
    return NO;
}
- (BOOL)checkAllReplayPending
{
    BOOL wait = NO;
    if (wait == NO) {    
        wait =[self checkPending_Accounts];
    }
    if (wait == NO) {    
        wait =[self checkPending_Inventory];
    }
    if (wait == NO) {    
        wait =[self checkPending_Organizations];
    }
    if (wait == NO) {    
        wait =[self checkPending_Surgeons];
    }
    if (wait == NO) {    
        wait =[self checkPending_LogRecordImpl];
    }
    if (wait == NO) {    
        wait =[self checkPending_PackageProperties];
    }
    return wait;
}

- (BOOL)packageIsSubscribed
{
    return NO;
}

- (BOOL)packageIsSubscribePending
{
    return NO;
}

- (BOOL)packageIsSuspended
{
    return NO;
}

- (BOOL)packageIsResumed
{
    return NO;
}

- (void)recordSubscriptionStatus:(SUPJsonMessage*)message
{
}

- (void)trackSubscriptionStatusOnMethod:(SUPString)method andRequestID:(SUPLong)counter
{
}

- (void)clearSubscriptionStatus
{
}

- (NSString *)ppmHeader
{
    SUPJsonObject *json = [[SUPJsonObject alloc] init];
    SUPAbstractPersonalizationParameters *pp = [[MedSalesMedSalesDB delegate] personalizationParameters];
        NSDictionary *keyMap = [pp getAllPersonalizationKeys];
    for (id keyName in [keyMap allKeys])
    {
        [json setNullableString:keyName:[keyMap objectForKey:keyName]];
    }    
    NSData *bin = [SUPStringUtil toUTF8:[json toString]];
    [json autorelease];
    return ([SUPBase64Encoding encode:bin]);
}

#if 0
- (SUPStringList *)authParam:(NSString*)synchronizationGroup
{
    SUPJsonObject *json = [[SUPJsonObject alloc] init];;
    MedSalesPersonalizationParameters* pp = [MedSalesMedSalesDB getPersonalizationParameters];;

    SUPObjectList * listSessionPersonalization = pp.listSessionPK;;
    for(MedSalesSessionPersonalization* p in listSessionPersonalization)
    {
        [json setNullableString:p.key_name:p.value];;
    }
    [json setString:@"publications":synchronizationGroup];
    [json setString:@"pv":[[NSNumber numberWithInt:[[self class] getProtocolVersion]] description]]; 
    [json setString:@"pid":self.pid];
    [json setString:@"app":self.appName];
    
    SUPConnectionProfile *sp = [[self class] getSynchronizationProfile];    
    [json setString:@"cle" :[sp getStringWithDefault:@"changeLogEnabled" :@"false"]];
    
    BOOL isInitialSync = [synchronizationGroup isEqualToString:@"initialSync"];
    BOOL async = !isInitialSync && [sp getBooleanWithDefault:@"asyncReplay" :YES];

    [json setString:@"_as" :[SUPStringUtil toString_boolean:async]];

    [json setString:@"os":[NSString stringWithFormat:@"%@ %@",[[UIDevice currentDevice] systemName],[[UIDevice currentDevice] systemVersion]]];

    NSData *bin = [SUPStringUtil toUTF8:[json toString]];
    NSString *authParam = [SUPBase64Encoding encode:bin];

    [json autorelease];

    int maxLen = 128;
    int size = ([authParam length] + maxLen - 1) / maxLen;
    if (size > 16)
    {
       @throw [NSException exceptionWithName:@"authParam error" reason:@"the length of personalization parameters exceeds the limit of authenticate parameters and the safe length is 512 bytes" userInfo:nil];
    }
    SUPStringList *authList = [SUPStringList listWithCapacity:16];
    for (int i = 0; i < size; i++)
    {
        
        [authList add:[authParam substringWithRange:NSMakeRange(i*maxLen, ((i + 1) * maxLen < [authParam length]) ? maxLen : ([authParam length] - i * maxLen))]];
    }
    for (int i = size; i < 16; i++)
    {
        [authList add:@"x"]; // spacer
    }

    return (authList);
}
#endif

- (NSMutableDictionary*)getTableMBOMap
{
    NSMutableDictionary *map = [[[NSMutableDictionary alloc] init] autorelease];
    [map setObject:@"Accounts" forKey:@"medsales_1_0_accounts"];;
    [map setObject:@"Inventory" forKey:@"medsales_1_0_inventory"];;
    [map setObject:@"Organizations" forKey:@"medsales_1_0_organizations"];;
    [map setObject:@"Surgeons" forKey:@"medsales_1_0_surgeons"];;
    [map setObject:@"LogRecordImpl" forKey:@"medsales_1_0_logrecordimpl"];;
    [map setObject:@"OperationReplay" forKey:@"medsales_1_0_operationreplay"];;
    [map setObject:@"SISSubscription" forKey:@"sup_sis_subscription"];;
    [map setObject:@"PackageProperties" forKey:@"medsales_1_0_packageproperties"];;
    [map setObject:@"ChangeLogImpl" forKey:@"medsales_1_0_changelogimpl"];;
    [map setObject:@"OfflineAuthentication" forKey:@"co_medsales_1_0_offlineauthentication"];;
    [map setObject:@"KeyGenerator" forKey:@"medsales_1_0_keygenerator"];;
    [map setObject:@"LocalKeyGenerator" forKey:@"co_medsales_1_0_localkeygenerator"];;
    
    return map;
}

@end