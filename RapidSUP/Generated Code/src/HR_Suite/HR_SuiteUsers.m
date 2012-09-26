/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "HR_SuiteUsers.h"
#import "HR_SuiteUsersMetaData.h"
#import "SUPJsonObject.h"
#import "HR_SuiteHR_SuiteDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "HR_SuiteKeyGenerator.h"
#import "HR_SuiteLocalKeyGenerator.h"
#import "HR_SuiteLogRecordImpl.h"

@implementation HR_SuiteUsers

@synthesize id_ = _id;
@synthesize employeeName = _employeeName;
@synthesize employeeID = _employeeID;
@synthesize employeePassword = _employeePassword;
@synthesize address = _address;
@synthesize department = _department;
@synthesize position = _position;
@synthesize manager = _manager;
@synthesize email = _email;
@synthesize phone = _phone;
@synthesize picture = _picture;
@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize fax = _fax;
@synthesize updateManagerCalled = _updateManagerCalled;
@synthesize updatePasswordCalled = _updatePasswordCalled;
@synthesize surrogateKey = _surrogateKey;

- (int64_t)surrogateKey
{
    return _surrogateKey;
}

- (void)setId_:(int32_t)newId_
{
    if (newId_ != self->_id)
    {
        self->_id = newId_;
        self.isDirty = YES;
    }
}

- (void)setEmployeeName:(NSString*)newEmployeeName
{
    if (newEmployeeName != self->_employeeName)
    {
		[self->_employeeName release];
        self->_employeeName = [newEmployeeName retain];
        self.isDirty = YES;
    }
}

- (void)setEmployeeID:(NSString*)newEmployeeID
{
    if (newEmployeeID != self->_employeeID)
    {
		[self->_employeeID release];
        self->_employeeID = [newEmployeeID retain];
        self.isDirty = YES;
    }
}

- (void)setEmployeePassword:(NSString*)newEmployeePassword
{
    if (newEmployeePassword != self->_employeePassword)
    {
		[self->_employeePassword release];
        self->_employeePassword = [newEmployeePassword retain];
        self.isDirty = YES;
    }
}

- (void)setAddress:(NSString*)newAddress
{
    if (newAddress != self->_address)
    {
		[self->_address release];
        self->_address = [newAddress retain];
        self.isDirty = YES;
    }
}

- (void)setDepartment:(NSString*)newDepartment
{
    if (newDepartment != self->_department)
    {
		[self->_department release];
        self->_department = [newDepartment retain];
        self.isDirty = YES;
    }
}

- (void)setPosition:(NSString*)newPosition
{
    if (newPosition != self->_position)
    {
		[self->_position release];
        self->_position = [newPosition retain];
        self.isDirty = YES;
    }
}

- (void)setManager:(NSString*)newManager
{
    if (newManager != self->_manager)
    {
		[self->_manager release];
        self->_manager = [newManager retain];
        self.isDirty = YES;
    }
}

- (void)setEmail:(NSString*)newEmail
{
    if (newEmail != self->_email)
    {
		[self->_email release];
        self->_email = [newEmail retain];
        self.isDirty = YES;
    }
}

- (void)setPhone:(NSString*)newPhone
{
    if (newPhone != self->_phone)
    {
		[self->_phone release];
        self->_phone = [newPhone retain];
        self.isDirty = YES;
    }
}

- (void)setPicture:(NSString*)newPicture
{
    if (newPicture != self->_picture)
    {
		[self->_picture release];
        self->_picture = [newPicture retain];
        self.isDirty = YES;
    }
}

- (void)setFirstName:(NSString*)newFirstName
{
    if (newFirstName != self->_firstName)
    {
		[self->_firstName release];
        self->_firstName = [newFirstName retain];
        self.isDirty = YES;
    }
}

- (void)setLastName:(NSString*)newLastName
{
    if (newLastName != self->_lastName)
    {
		[self->_lastName release];
        self->_lastName = [newLastName retain];
        self.isDirty = YES;
    }
}

- (void)setFax:(NSString*)newFax
{
    if (newFax != self->_fax)
    {
		[self->_fax release];
        self->_fax = [newFax retain];
        self.isDirty = YES;
    }
}

- (void)setUpdateManagerCalled:(BOOL)newUpdateManagerCalled
{
    if (newUpdateManagerCalled != self->_updateManagerCalled)
    {
        self->_updateManagerCalled = newUpdateManagerCalled;
        self.isDirty = YES;
    }
}

- (void)setUpdatePasswordCalled:(BOOL)newUpdatePasswordCalled
{
    if (newUpdatePasswordCalled != self->_updatePasswordCalled)
    {
        self->_updatePasswordCalled = newUpdatePasswordCalled;
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

static SUPEntityDelegate *g_HR_SuiteUsers_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_HR_SuiteUsers_delegate == nil) {
			g_HR_SuiteUsers_delegate = [[SUPEntityDelegate alloc] initWithName:@"HR_SuiteUsers" clazz:[self class]
				metaData:[self metaData] dbDelegate:[HR_SuiteHR_SuiteDB delegate] database:[HR_SuiteHR_SuiteDB instance]];
		}
	}
	
	return [[g_HR_SuiteUsers_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* HR_SuiteUsers_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (HR_SuiteUsers_META_DATA == nil) {
		HR_SuiteUsers_META_DATA = [[HR_SuiteUsersMetaData alloc] init];
	}
	
	return HR_SuiteUsers_META_DATA;
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
        self.classMetaData = [HR_SuiteUsers metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[HR_SuiteUsers delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_employeeName)
    {
        [_employeeName release];
        _employeeName = nil;
    }
    if(_employeeID)
    {
        [_employeeID release];
        _employeeID = nil;
    }
    if(_employeePassword)
    {
        [_employeePassword release];
        _employeePassword = nil;
    }
    if(_address)
    {
        [_address release];
        _address = nil;
    }
    if(_department)
    {
        [_department release];
        _department = nil;
    }
    if(_position)
    {
        [_position release];
        _position = nil;
    }
    if(_manager)
    {
        [_manager release];
        _manager = nil;
    }
    if(_email)
    {
        [_email release];
        _email = nil;
    }
    if(_phone)
    {
        [_phone release];
        _phone = nil;
    }
    if(_picture)
    {
        [_picture release];
        _picture = nil;
    }
    if(_firstName)
    {
        [_firstName release];
        _firstName = nil;
    }
    if(_lastName)
    {
        [_lastName release];
        _lastName = nil;
    }
    if(_fax)
    {
        [_fax release];
        _fax = nil;
    }
	[super dealloc];
}




+ (HR_SuiteUsers*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (HR_SuiteUsers*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[HR_SuiteUsers class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (HR_SuiteUsers*)load:(int64_t)id_
{
    return (HR_SuiteUsers*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (HR_SuiteUsers*)getInstance
{
    HR_SuiteUsers* me = [[HR_SuiteUsers alloc] init];
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
- (HR_SuiteUsers*)getDownloadState
{
    return (HR_SuiteUsers*)[self i_getDownloadState];
}

- (HR_SuiteUsers*) getOriginalState
{
    return (HR_SuiteUsers*)[self i_getOriginalState];
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

-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 53:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 53:
        self.surrogateKey = v;
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
    case 40:
        return self.employeeName;
    case 41:
        return self.employeeID;
    case 42:
        return self.employeePassword;
    case 43:
        return self.address;
    case 44:
        return self.department;
    case 45:
        return self.position;
    case 46:
        return self.manager;
    case 47:
        return self.email;
    case 48:
        return self.phone;
    case 49:
        return self.picture;
    case 50:
        return self.firstName;
    case 51:
        return self.lastName;
    case 52:
        return self.fax;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 40:
        self.employeeName = v;
        break;;
    case 41:
        self.employeeID = v;
        break;;
    case 42:
        self.employeePassword = v;
        break;;
    case 43:
        self.address = v;
        break;;
    case 44:
        self.department = v;
        break;;
    case 45:
        self.position = v;
        break;;
    case 46:
        self.manager = v;
        break;;
    case 47:
        self.email = v;
        break;;
    case 48:
        self.phone = v;
        break;;
    case 49:
        self.picture = v;
        break;;
    case 50:
        self.firstName = v;
        break;;
    case 51:
        self.lastName = v;
        break;;
    case 52:
        self.fax = v;
        break;;
    default:
        [super setAttributeNullableString:id_:v];
        break;;
    }
}
-(SUPBoolean) getAttributeBoolean:(int)id_
{
    switch(id_)
    {
    case 54:
        return self.updateManagerCalled;
    case 55:
        return self.updatePasswordCalled;
    default:
         return [super getAttributeBoolean:id_];
    }
}

-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v
{
    switch(id_)
    {
    case 54:
        self.updateManagerCalled = v;
        break;;
    case 55:
        self.updatePasswordCalled = v;
        break;;
    default:
        [super setAttributeBoolean:id_:v];
        break;;
    }
}
-(SUPInt) getAttributeInt:(int)id_
{
    switch(id_)
    {
    case 39:
        return self.id_;
    default:
         return [super getAttributeInt:id_];
    }
}

-(void) setAttributeInt:(int)id_:(SUPInt)v
{
    switch(id_)
    {
    case 39:
        self.id_ = v;
        break;;
    default:
        [super setAttributeInt:id_:v];
        break;;
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
- (SUPObjectList*)getLogRecords
{
   return [HR_SuiteLogRecordImpl findByEntity:@"Users":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	Users = \n\
	    id = %i,\n\
	    employeeName = %@,\n\
	    employeeID = %@,\n\
	    employeePassword = %@,\n\
	    address = %@,\n\
	    department = %@,\n\
	    position = %@,\n\
	    manager = %@,\n\
	    email = %@,\n\
	    phone = %@,\n\
	    picture = %@,\n\
	    firstName = %@,\n\
	    lastName = %@,\n\
	    fax = %@,\n\
	    updateManagerCalled = %i,\n\
	    updatePasswordCalled = %i,\n\
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
    	,self.id_
    	,self.employeeName
    	,self.employeeID
    	,self.employeePassword
    	,self.address
    	,self.department
    	,self.position
    	,self.manager
    	,self.email
    	,self.phone
    	,self.picture
    	,self.firstName
    	,self.lastName
    	,self.fax
    	,self.updateManagerCalled
    	,self.updatePasswordCalled
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


/*!
  @method
  @abstract Generated instance method of type UPDATE
  @throws SUPPersistenceException
 */
- (void)updateManager
{
    self.isDirty = YES;
    self.updateManagerCalled = NO;
    self.updatePasswordCalled = NO;
    self.updateManagerCalled = YES;
    [self update];
}

/*!
  @method
  @abstract Generated instance method of type CREATE
  @throws SUPPersistenceException
 */
- (void)addEmployee
{
    self.isDirty = YES;
    self.updateManagerCalled = NO;
    self.updatePasswordCalled = NO;
    [self create];
}

/*!
  @method
  @abstract Generated instance method of type UPDATE
  @throws SUPPersistenceException
 */
- (void)updatePassword
{
    self.isDirty = YES;
    self.updateManagerCalled = NO;
    self.updatePasswordCalled = NO;
    self.updatePasswordCalled = YES;
    [self update];
}



+ (SUPObjectList*)findAll
{
	return [self findAll:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findAll:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:360] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"e\",x.\"f\",x.\"g\",x.\"h\",x.\"i\",x.\"j\",x.\"l\",x.\"m\",x.\"n\",x.\"o\",x.\"q\",x.\"r\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"p\",x.\"_rc\",x.\"_ds\" FROM \"hr_suite_1_0_users\" x where (((x.\"_pf\" = 1 or not exists (select x_os.\"p\" from \"hr_suite_1_0_users_os\" x_os where"
	                               " x_os.\"p\" = x.\"p\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[HR_SuiteUsers class]];
}



+ (HR_SuiteUsers*)findByPrimaryKey:(int32_t)id_
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:385] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"e\",x.\"f\",x.\"g\",x.\"h\",x.\"i\",x.\"j\",x.\"l\",x.\"m\",x.\"n\",x.\"o\",x.\"q\",x.\"r\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"p\",x.\"_rc\",x.\"_ds\" FROM \"hr_suite_1_0_users\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"p\" from \"hr_suite_1_0_users_os\" x_os"
	                               " where x_os.\"p\" = x.\"p\")))) and ( x.\"a\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"int"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:[NSNumber numberWithInt:id_]];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[HR_SuiteUsers class]];
	if(res && ([res size] > 0))
	{   
		HR_SuiteUsers* cus = (HR_SuiteUsers*)[res item:0];
	    return cus;
	}
	else
	    return nil;
}



+ (SUPObjectList*)findByEmployeeIDAndPassword:(NSString*)employeeID withEmployeePassword:(NSString*)employeePassword
{
	return [self findByEmployeeIDAndPassword:employeeID withEmployeePassword:employeePassword skip:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findByEmployeeIDAndPassword:(NSString*)employeeID withEmployeePassword:(NSString*)employeePassword skip:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:395] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"e\",x.\"f\",x.\"g\",x.\"h\",x.\"i\",x.\"j\",x.\"l\",x.\"m\",x.\"n\",x.\"o\",x.\"q\",x.\"r\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"p\",x.\"_rc\",x.\"_ds\" FROM \"hr_suite_1_0_users\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"p\" from \"hr_suite_1_0_users_os\" x_os where"
	                               " x_os.\"p\" = x.\"p\")))) and ( x.\"c\" = ? AND x.\"d\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string?"]];
	[dts addObject:[SUPDataType forName:@"string?"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:employeeID];
	[values addObject:employeePassword];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[HR_SuiteUsers class]];
}



+ (SUPObjectList*)findByEmployeeID:(NSString*)employeeID
{
	return [self findByEmployeeID:employeeID skip:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findByEmployeeID:(NSString*)employeeID skip:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:379] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"e\",x.\"f\",x.\"g\",x.\"h\",x.\"i\",x.\"j\",x.\"l\",x.\"m\",x.\"n\",x.\"o\",x.\"q\",x.\"r\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"p\",x.\"_rc\",x.\"_ds\" FROM \"hr_suite_1_0_users\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"p\" from \"hr_suite_1_0_users_os\" x_os where"
	                               " x_os.\"p\" = x.\"p\")))) and ( x.\"c\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string?"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:employeeID];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[HR_SuiteUsers class]];
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