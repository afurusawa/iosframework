/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "MedSalesSISSubscriptionKey.h"
#import "MedSalesSISSubscriptionKeyMetaData.h"
#import "MedSalesMedSalesDB.h"
#import "SUPClassDelegate.h"
#import "SUPEntityMetaDataRBS.h"
@implementation MedSalesSISSubscriptionKey

static SUPClassDelegate *g_MedSalesSISSubscriptionKey_delegate = nil;

+ (SUPClassDelegate *) delegate
{
	@synchronized(self) {
		if (g_MedSalesSISSubscriptionKey_delegate == nil) {
			g_MedSalesSISSubscriptionKey_delegate = [[SUPClassDelegate alloc] initWithName:@"MedSalesSISSubscriptionKey" clazz:[self class]
				metaData:[self metaData] dbDelegate:[MedSalesMedSalesDB delegate] database:[MedSalesMedSalesDB instance]];
		}
	}
	
	return [[g_MedSalesSISSubscriptionKey_delegate retain] autorelease];
}
static SUPClassMetaDataRBS* MedSalesSISSubscriptionKey_META_DATA;

+ (SUPClassMetaDataRBS*)metaData
{
    if (MedSalesSISSubscriptionKey_META_DATA == nil) {
 	   	MedSalesSISSubscriptionKey_META_DATA = [[MedSalesSISSubscriptionKeyMetaData alloc] init];
	}
	
	return MedSalesSISSubscriptionKey_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}

@end