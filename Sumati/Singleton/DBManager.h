//
//  DBManager.h
//  Sumati
//
//  Created by Chandrahasan Vantaku on 10/07/13.
//  Copyright (c) 2013 Chandrahasan Vantaku. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBManager : NSObject
{
    sqlite3 *_databae;
}
+(DBManager *)sharedInstance;
- (NSArray *)getAllPadyas;
- (NSArray *)getAllFavPadyas;
@end
