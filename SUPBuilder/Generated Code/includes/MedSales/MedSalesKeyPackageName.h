#import "sybase_sup.h"

#import "SUPClassWithMetaData.h"
#import "SUPAbstractStructure.h"


@class SUPClassDelegate;
@class SUPClassMetaDataRBS;

// public interface declaration, can be used by application. 
/*!
 @class MedSalesKeyPackageName
 @abstract This class is part of package "MedSales:1.0"
 @discussion Generated by Sybase Unwired Platform, compiler version 2.1.3.231
*/

@interface MedSalesKeyPackageName : SUPAbstractStructure<SUPClassWithMetaData>
{
@private
    NSString* _key_name;
    NSString* _package_name;
    NSString* _user_name;
    NSString* _domain_name;
}

@property(retain,nonatomic) NSString* key_name;
@property(retain,nonatomic) NSString* package_name;
@property(retain,nonatomic) NSString* user_name;
@property(retain,nonatomic) NSString* domain_name;

- (id) init;
- (void)dealloc;
/*!
  @method 
  @abstract Creates a new autoreleased instance of this class
  @discussion
 */
+ (MedSalesKeyPackageName*)getInstance;
+ (SUPClassDelegate *)delegate;
+ (SUPClassMetaDataRBS*)metaData;
- (SUPClassMetaDataRBS*)getClassMetaData;


@end
typedef SUPObjectList MedSalesKeyPackageNameList;

// internal methods declaration, only used by generated code.
@interface MedSalesKeyPackageName(internal)


- (SUPJsonObject*)getAttributeJson:(int)id_;
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value;

-(SUPString) getAttributeString:(int)id_;
-(void) setAttributeString:(int)id_:(SUPString)v;
@end