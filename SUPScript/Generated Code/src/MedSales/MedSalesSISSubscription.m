/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "MedSalesSISSubscription.h"
#import "MedSalesSISSubscriptionMetaData.h"
#import "MedSalesMedSalesDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
@implementation MedSalesSISSubscription

static SUPEntityDelegate *g_MedSalesSISSubscription_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_MedSalesSISSubscription_delegate == nil) {
			g_MedSalesSISSubscription_delegate = [[SUPEntityDelegate alloc] initWithName:@"MedSalesSISSubscription" clazz:[self class]
				metaData:[self metaData] dbDelegate:[MedSalesMedSalesDB delegate] database:[MedSalesMedSalesDB instance]];
		}
	}
	
	return [[g_MedSalesSISSubscription_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* MedSalesSISSubscription_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (MedSalesSISSubscription_META_DATA == nil) {
		MedSalesSISSubscription_META_DATA = [[MedSalesSISSubscriptionMetaData alloc] init];
	}
	
	return MedSalesSISSubscription_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}

- (void)clearRelationshipObjects
{
}

@end