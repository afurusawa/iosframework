/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "MedSalesKeyGenerator.h"
#import "MedSalesKeyGeneratorMetaData.h"
#import "SUPEntityDelegate.h"
#import "MedSalesMedSalesDB.h"
#import "SUPKeyGenerator.h"

@implementation MedSalesKeyGenerator

static SUPEntityDelegate *g_MedSalesKeyGenerator_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_MedSalesKeyGenerator_delegate == nil) {
			g_MedSalesKeyGenerator_delegate = [[SUPEntityDelegate alloc] initWithName:@"MedSalesKeyGenerator" clazz:[self class]
				metaData:[self metaData] dbDelegate:[MedSalesMedSalesDB delegate] database:[MedSalesMedSalesDB instance]];
		}
	}
	
	return [[g_MedSalesKeyGenerator_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* MedSalesKeyGenerator_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (MedSalesKeyGenerator_META_DATA == nil) {
 	   	MedSalesKeyGenerator_META_DATA = [[MedSalesKeyGeneratorMetaData alloc] init];
	}
	
	return MedSalesKeyGenerator_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}

- (id)init
{
    self = [super initWithParameters:[MedSalesMedSalesDB delegate]:@"medsales_1_0_keygenerator":100000];
    if (self) {
        // Initialization code here.
        [SUPKeyGenerator setObjectInstance:@"MedSales":self];
    }
    
    return self;
}

+ (MedSalesKeyGenerator*)getInstance
{
    MedSalesKeyGenerator* me = [[MedSalesKeyGenerator alloc] init];
    [me autorelease];
    return me;
}

+ (int64_t)generateId
{
    return [[MedSalesMedSalesDB delegate] generateId];
}

@end