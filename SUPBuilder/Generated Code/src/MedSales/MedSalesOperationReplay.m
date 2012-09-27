/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "MedSalesOperationReplay.h"
#import "MedSalesOperationReplayMetaData.h"
#import "SUPJsonObject.h"
#import "MedSalesMedSalesDB.h"
#import "SUPLocalEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "MedSalesKeyGenerator.h"
#import "MedSalesLocalKeyGenerator.h"
#import "MedSalesLogRecordImpl.h"

@implementation MedSalesOperationReplay

@synthesize remoteId = _remoteId;
@synthesize component = _component;
@synthesize entityKey = _entityKey;
@synthesize attributes = _attributes;
@synthesize operation = _operation;
@synthesize parameters = _parameters;
@synthesize replayLog = _replayLog;
@synthesize exception = _exception;
@synthesize completed = _completed;
@synthesize requestId = _requestId;

- (int64_t)requestId
{
    return _requestId;
}

- (void)setRemoteId:(NSString*)newRemoteId
{
    if (newRemoteId != self->_remoteId)
    {
		[self->_remoteId release];
        self->_remoteId = [newRemoteId retain];
        self.isDirty = YES;
    }
}

- (void)setComponent:(NSString*)newComponent
{
    if (newComponent != self->_component)
    {
		[self->_component release];
        self->_component = [newComponent retain];
        self.isDirty = YES;
    }
}

- (void)setEntityKey:(NSString*)newEntityKey
{
    if (newEntityKey != self->_entityKey)
    {
		[self->_entityKey release];
        self->_entityKey = [newEntityKey retain];
        self.isDirty = YES;
    }
}

- (void)setAttributes:(NSString*)newAttributes
{
    if (newAttributes != self->_attributes)
    {
		[self->_attributes release];
        self->_attributes = [newAttributes retain];
        self.isDirty = YES;
    }
}

- (void)setOperation:(NSString*)newOperation
{
    if (newOperation != self->_operation)
    {
		[self->_operation release];
        self->_operation = [newOperation retain];
        self.isDirty = YES;
    }
}

- (void)setParameters:(NSString*)newParameters
{
    if (newParameters != self->_parameters)
    {
		[self->_parameters release];
        self->_parameters = [newParameters retain];
        self.isDirty = YES;
    }
}

- (void)setReplayLog:(NSString*)newReplayLog
{
    if (newReplayLog != self->_replayLog)
    {
		[self->_replayLog release];
        self->_replayLog = [newReplayLog retain];
        self.isDirty = YES;
    }
}

- (void)setException:(NSString*)newException
{
    if (newException != self->_exception)
    {
		[self->_exception release];
        self->_exception = [newException retain];
        self.isDirty = YES;
    }
}

- (void)setCompleted:(BOOL)newCompleted
{
    if (newCompleted != self->_completed)
    {
        self->_completed = newCompleted;
        self.isDirty = YES;
    }
}

- (void)setRequestId:(int64_t)newRequestId
{
    if (newRequestId != self->_requestId)
    {
        self->_requestId = newRequestId;
        self.isNew = YES;
    }
}

static SUPLocalEntityDelegate *g_MedSalesOperationReplay_delegate = nil;

+ (SUPLocalEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_MedSalesOperationReplay_delegate == nil) {
			g_MedSalesOperationReplay_delegate = [[SUPLocalEntityDelegate alloc] initWithName:@"MedSalesOperationReplay" clazz:[self class]
				metaData:[self metaData] dbDelegate:[MedSalesMedSalesDB delegate] database:[MedSalesMedSalesDB instance]];
		}
	}
	
	return [[g_MedSalesOperationReplay_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* MedSalesOperationReplay_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (MedSalesOperationReplay_META_DATA == nil) {
		MedSalesOperationReplay_META_DATA = [[MedSalesOperationReplayMetaData alloc] init];
	}
	
	return MedSalesOperationReplay_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}

- (void)clearRelationshipObjects
{
}

- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = [MedSalesOperationReplay metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[MedSalesOperationReplay delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_remoteId)
    {
        [_remoteId release];
        _remoteId = nil;
    }
    if(_component)
    {
        [_component release];
        _component = nil;
    }
    if(_entityKey)
    {
        [_entityKey release];
        _entityKey = nil;
    }
    if(_attributes)
    {
        [_attributes release];
        _attributes = nil;
    }
    if(_operation)
    {
        [_operation release];
        _operation = nil;
    }
    if(_parameters)
    {
        [_parameters release];
        _parameters = nil;
    }
    if(_replayLog)
    {
        [_replayLog release];
        _replayLog = nil;
    }
    if(_exception)
    {
        [_exception release];
        _exception = nil;
    }
	[super dealloc];
}




+ (MedSalesOperationReplay*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (MedSalesOperationReplay*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (MedSalesOperationReplay*)load:(int64_t)id_
{
    return (MedSalesOperationReplay*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (MedSalesOperationReplay*)getInstance
{
    MedSalesOperationReplay* me = [[MedSalesOperationReplay alloc] init];
    [me autorelease];
    return me;
}
- (SUPJsonObject*)getAttributeJson:(int)id_
{
    switch(id_)
    {
        default:
        return [super getAttributeJson:id_];
    }

}
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value
{
    switch(id_)
    { 
        default:
            [super setAttributeJson:id_:value];
            break;
    }

}
- (id)getAttributeLargeObject:(int)id_ loadFromDB:(BOOL)loadFromDB
{
    switch(id_)
    {
        default:
        return [super getAttributeJson:id_];
    }
}
- (void)setAttributeLargeObject:(int)id_:(id)value
{
    switch(id_)
    {
        default:
            [super setAttributeJson:id_:value];
            break;
    }

}

-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 359:
        return self.requestId;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 359:
        self.requestId = v;
        break;;
    default:
        [super setAttributeLong:id_:v];
        break;;
    }
}
-(SUPString) getAttributeNullableString:(int)id_
{
    switch(id_)
    {
    case 365:
        return self.replayLog;
    case 366:
        return self.exception;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 365:
        self.replayLog = v;
        break;;
    case 366:
        self.exception = v;
        break;;
    default:
        [super setAttributeNullableString:id_:v];
        break;;
    }
}
-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 358:
        return self.remoteId;
    case 360:
        return self.component;
    case 361:
        return self.entityKey;
    case 362:
        return self.attributes;
    case 363:
        return self.operation;
    case 364:
        return self.parameters;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 358:
        self.remoteId = v;
        break;;
    case 360:
        self.component = v;
        break;;
    case 361:
        self.entityKey = v;
        break;;
    case 362:
        self.attributes = v;
        break;;
    case 363:
        self.operation = v;
        break;;
    case 364:
        self.parameters = v;
        break;;
    default:
        [super setAttributeString:id_:v];
        break;;
    }
}
-(SUPBoolean) getAttributeBoolean:(int)id_
{
    switch(id_)
    {
    case 367:
        return self.completed;
    default:
         return [super getAttributeBoolean:id_];
    }
}

-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v
{
    switch(id_)
    {
    case 367:
        self.completed = v;
        break;;
    default:
        [super setAttributeBoolean:id_:v];
        break;;
    }
}
- (SUPObjectList*)getLogRecords
{
   return [MedSalesLogRecordImpl findByEntity:@"OperationReplay":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	OperationReplay = \n\
	    remoteId = %@,\n\
	    component = %@,\n\
	    entityKey = %@,\n\
	    attributes = %@,\n\
	    operation = %@,\n\
	    parameters = %@,\n\
	    replayLog = %@,\n\
	    exception = %@,\n\
	    completed = %i,\n\
	    requestId = %qi,\n\
	    isNew = %i,\n\
        isDirty = %i,\n\
        isDeleted = %i,\n\
	\n"
    	,self.remoteId
    	,self.component
    	,self.entityKey
    	,self.attributes
    	,self.operation
    	,self.parameters
    	,self.replayLog
    	,self.exception
    	,self.completed
    	,self.requestId
		,self.isNew
		,self.isDirty
		,self.isDeleted
	];
	return str;

}

- (NSString*)description
{
	return [self toString];
}
+ (SUPObjectList*)getPendingObjects
{
    return (SUPObjectList*)[(SUPEntityDelegate*)[[self class] delegate] getPendingObjects];
}

+ (SUPObjectList*)getPendingObjects:(int32_t)skip take:(int32_t)take
{
    return (SUPObjectList*)[(SUPEntityDelegate*)[[self class] delegate] getPendingObjects:skip:take];
}


/*!
  @method
  @abstract Generated class method 
  @throws SUPPersistenceException
 */
+ (void)replay
{
    //replay
    // TODO: implement
    NSException *exception = [NSException exceptionWithName:@"NotImplementedException" reason:@"" userInfo:nil];
    @throw exception;
}

/*!
  @method
  @abstract Generated instance method 
  @throws SUPPersistenceException
 */
- (void)mbsReplay
{
    //mbsReplay
    // TODO: implement
    NSException *exception = [NSException exceptionWithName:@"NotImplementedException" reason:@"" userInfo:nil];
    @throw exception;
}

/*!
  @method
  @abstract Generated instance method 
  @throws SUPPersistenceException
 */
- (void)saveErrorInfo
{
    //saveErrorInfo
    // TODO: implement
    NSException *exception = [NSException exceptionWithName:@"NotImplementedException" reason:@"" userInfo:nil];
    @throw exception;
}



+ (SUPObjectList*)findReadyToReplay:(NSString*)remoteId
{
	return [self findReadyToReplay:remoteId skip:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findReadyToReplay:(NSString*)remoteId skip:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:209] autorelease];
	[_selectSQL appendString:@" r.\"a\",r.\"c\",r.\"d\",r.\"e\",r.\"f\",r.\"g\",r.\"h\",r.\"i\",r.\"j\",r.\"b\" from \"medsales_1_0_operationreplay\" r where r.\"a\" = ? and r.\"j\" = 0 and r.\"l\" = 0 and r.\"m\" is null order by r.\"b\""];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:remoteId];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[MedSalesOperationReplay class]];
}



+ (SUPObjectList*)findAsyncOperationToReplay:(NSString*)remoteId
{
	return [self findAsyncOperationToReplay:remoteId skip:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findAsyncOperationToReplay:(NSString*)remoteId skip:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:213] autorelease];
	[_selectSQL appendString:@" r.\"a\",r.\"c\",r.\"d\",r.\"e\",r.\"f\",r.\"g\",r.\"h\",r.\"i\",r.\"j\",r.\"b\" from \"medsales_1_0_operationreplay\" r where r.\"a\" = ? and r.\"j\" = 0 and r.\"l\" = 0 and r.\"m\" is not null order by r.\"b\""];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:remoteId];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[MedSalesOperationReplay class]];
}



+ (SUPObjectList*)findReadyToFinish
{
	return [self findReadyToFinish:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findReadyToFinish:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:157] autorelease];
	[_selectSQL appendString:@" r.\"a\",r.\"c\",r.\"d\",r.\"e\",r.\"f\",r.\"g\",r.\"h\",r.\"i\",r.\"j\",r.\"b\" from \"medsales_1_0_operationreplay\" r where r.\"j\" = 1 order by r.\"b\""];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[MedSalesOperationReplay class]];
}

@end