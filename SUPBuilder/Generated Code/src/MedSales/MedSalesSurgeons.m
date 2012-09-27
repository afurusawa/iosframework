/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "MedSalesSurgeons.h"
#import "MedSalesSurgeonsMetaData.h"
#import "SUPJsonObject.h"
#import "MedSalesMedSalesDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "MedSalesKeyGenerator.h"
#import "MedSalesLocalKeyGenerator.h"
#import "MedSalesLogRecordImpl.h"

@implementation MedSalesSurgeons

@synthesize surgeon_id = _surgeon_id;
@synthesize surgeon_name = _surgeon_name;
@synthesize surgeon_specialization = _surgeon_specialization;
@synthesize surgeon_organization = _surgeon_organization;
@synthesize surrogateKey = _surrogateKey;

- (int64_t)surrogateKey
{
    return _surrogateKey;
}

- (void)setSurgeon_id:(int32_t)newSurgeon_id
{
    if (newSurgeon_id != self->_surgeon_id)
    {
        self->_surgeon_id = newSurgeon_id;
        self.isDirty = YES;
    }
}

- (void)setSurgeon_name:(NSString*)newSurgeon_name
{
    if (newSurgeon_name != self->_surgeon_name)
    {
		[self->_surgeon_name release];
        self->_surgeon_name = [newSurgeon_name retain];
        self.isDirty = YES;
    }
}

- (void)setSurgeon_specialization:(NSString*)newSurgeon_specialization
{
    if (newSurgeon_specialization != self->_surgeon_specialization)
    {
		[self->_surgeon_specialization release];
        self->_surgeon_specialization = [newSurgeon_specialization retain];
        self.isDirty = YES;
    }
}

- (void)setSurgeon_organization:(NSString*)newSurgeon_organization
{
    if (newSurgeon_organization != self->_surgeon_organization)
    {
		[self->_surgeon_organization release];
        self->_surgeon_organization = [newSurgeon_organization retain];
        self.isDirty = YES;
    }
}

- (void)setSurrogateKey:(int64_t)newSurrogateKey
{
    if (newSurrogateKey != self->_surrogateKey)
    {
        self->_surrogateKey = newSurrogateKey;
        self.isNew = YES;
    }
}

static SUPEntityDelegate *g_MedSalesSurgeons_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_MedSalesSurgeons_delegate == nil) {
			g_MedSalesSurgeons_delegate = [[SUPEntityDelegate alloc] initWithName:@"MedSalesSurgeons" clazz:[self class]
				metaData:[self metaData] dbDelegate:[MedSalesMedSalesDB delegate] database:[MedSalesMedSalesDB instance]];
		}
	}
	
	return [[g_MedSalesSurgeons_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* MedSalesSurgeons_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (MedSalesSurgeons_META_DATA == nil) {
		MedSalesSurgeons_META_DATA = [[MedSalesSurgeonsMetaData alloc] init];
	}
	
	return MedSalesSurgeons_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}

- (void)clearRelationshipObjects
{
}

+ (NSObject<SUPCallbackHandler>*)callbackHandler
{
	return [[self delegate] callbackHandler];
}

+ (void)registerCallbackHandler:(NSObject<SUPCallbackHandler>*)newCallbackHandler
{
	[[self delegate] registerCallbackHandler:newCallbackHandler];
}
- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = [MedSalesSurgeons metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[MedSalesSurgeons delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_surgeon_name)
    {
        [_surgeon_name release];
        _surgeon_name = nil;
    }
    if(_surgeon_specialization)
    {
        [_surgeon_specialization release];
        _surgeon_specialization = nil;
    }
    if(_surgeon_organization)
    {
        [_surgeon_organization release];
        _surgeon_organization = nil;
    }
	[super dealloc];
}




+ (MedSalesSurgeons*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (MedSalesSurgeons*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[MedSalesSurgeons class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (MedSalesSurgeons*)load:(int64_t)id_
{
    return (MedSalesSurgeons*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (MedSalesSurgeons*)getInstance
{
    MedSalesSurgeons* me = [[MedSalesSurgeons alloc] init];
    [me autorelease];
    return me;
}
- (SUPString)getLastOperation
{
    if (self.pendingChange == 'C')
    {
        return @"create";
    }
    else if (self.pendingChange == 'D')
    {
        return @"delete";
    }
    else if (self.pendingChange == 'U')
    {
        return @"update";
    }
    return @"";

}
+ (void)submitPendingOperations
{
    [[[self class] delegate] submitPendingOperations];
}

+ (void)cancelPendingOperations
{
    [[[self class] delegate] cancelPendingOperations];
}
- (MedSalesSurgeons*)getDownloadState
{
    return (MedSalesSurgeons*)[self i_getDownloadState];
}

- (MedSalesSurgeons*) getOriginalState
{
    return (MedSalesSurgeons*)[self i_getOriginalState];
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
    case 344:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 344:
        self.surrogateKey = v;
        break;;
    default:
        [super setAttributeLong:id_:v];
        break;;
    }
}
-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 341:
        return self.surgeon_name;
    case 342:
        return self.surgeon_specialization;
    case 343:
        return self.surgeon_organization;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 341:
        self.surgeon_name = v;
        break;;
    case 342:
        self.surgeon_specialization = v;
        break;;
    case 343:
        self.surgeon_organization = v;
        break;;
    default:
        [super setAttributeString:id_:v];
        break;;
    }
}
-(SUPInt) getAttributeInt:(int)id_
{
    switch(id_)
    {
    case 340:
        return self.surgeon_id;
    default:
         return [super getAttributeInt:id_];
    }
}

-(void) setAttributeInt:(int)id_:(SUPInt)v
{
    switch(id_)
    {
    case 340:
        self.surgeon_id = v;
        break;;
    default:
        [super setAttributeInt:id_:v];
        break;;
    }
}
- (SUPObjectList*)getLogRecords
{
   return [MedSalesLogRecordImpl findByEntity:@"Surgeons":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	Surgeons = \n\
	    surgeon_id = %i,\n\
	    surgeon_name = %@,\n\
	    surgeon_specialization = %@,\n\
	    surgeon_organization = %@,\n\
	    pending = %i,\n\
	    pendingChange = %c,\n\
	    replayPending = %qi,\n\
	    replayFailure = %qi,\n\
	    surrogateKey = %qi,\n\
	    replayCounter = %qi,\n\
	    disableSubmit = %i,\n\
	    isNew = %i,\n\
        isDirty = %i,\n\
        isDeleted = %i,\n\
	\n"
    	,self.surgeon_id
    	,self.surgeon_name
    	,self.surgeon_specialization
    	,self.surgeon_organization
    	,self.pending
    	,self.pendingChange
    	,self.replayPending
    	,self.replayFailure
    	,self.surrogateKey
    	,self.replayCounter
    	,self.disableSubmit
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




+ (SUPObjectList*)findAll
{
	return [self findAll:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findAll:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:261] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"e\",x.\"_rc\",x.\"_ds\" FROM \"medsales_1_0_surgeons\" x where (((x.\"_pf\" = 1 or not exists (select x_os.\"e\" from \"medsales_1_0_surgeons_os\" x_os where x_os.\"e\" = x.\"e\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[MedSalesSurgeons class]];
}



+ (MedSalesSurgeons*)findByPrimaryKey:(int32_t)surgeon_id
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:286] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"e\",x.\"_rc\",x.\"_ds\" FROM \"medsales_1_0_surgeons\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"e\" from \"medsales_1_0_surgeons_os\" x_os where x_os.\"e\" = x.\"e\")))) and ( x.\"a\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"int"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:[NSNumber numberWithInt:surgeon_id]];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[MedSalesSurgeons class]];
	if(res && ([res size] > 0))
	{   
		MedSalesSurgeons* cus = (MedSalesSurgeons*)[res item:0];
	    return cus;
	}
	else
	    return nil;
}



+ (SUPObjectList*)findByOrganization:(NSString*)organization
{
	return [self findByOrganization:organization skip:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findByOrganization:(NSString*)organization skip:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:280] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"e\",x.\"_rc\",x.\"_ds\" FROM \"medsales_1_0_surgeons\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"e\" from \"medsales_1_0_surgeons_os\" x_os where x_os.\"e\" = x.\"e\")))) and ( x.\"d\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:organization];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[MedSalesSurgeons class]];
}

/*!
  @method
  @abstract Generated class method 
  @param query
  @throws SUPPersistenceException
 */
+ (int32_t)getSize:(SUPQuery*)query
{
    return [(SUPEntityDelegate*)([[self class] delegate]) getSize:query];
}

@end