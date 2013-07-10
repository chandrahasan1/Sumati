//
//  DBManager.m
//  Sumati
//
//  Created by Chandrahasan Vantaku on 10/07/13.
//  Copyright (c) 2013 Chandrahasan Vantaku. All rights reserved.
//

#import "DBManager.h"
#import "Padyam.h"

@implementation DBManager

+(DBManager *)sharedInstance {
    
    static DBManager *manager = nil;
    
    static dispatch_once_t pred;
    
    dispatch_once(&pred, ^{
        
        manager = [DBManager alloc].init;
        
    });
    
    return manager;
}

- (id)init {
    
    if (self = [super init]) {
        
        NSString *sqlDB = [[NSBundle mainBundle] pathForResource:@"SumatiSatakam" ofType:@"sql"];

        if (sqlite3_open([sqlDB UTF8String], &_databae) != SQLITE_OK) {
            NSLog(@"Failed to open the database");
        }
    }
    
    return self;
}

- (void)dealloc
{
    sqlite3_close(_databae);
}

- (NSArray *)getAllPadyas {
    
        NSMutableArray *retval = [[NSMutableArray alloc] init];
        NSString *query = @"SELECT PId, TitleStr, TextVerse, Meaning, isAudioAvailble, isFav FROM PADYALU ORDER BY PId";
        sqlite3_stmt *statement;
        if (sqlite3_prepare_v2(_databae, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
            while (sqlite3_step(statement) == SQLITE_ROW) {
                int uniqueId = sqlite3_column_int(statement, 0);
                char *titleChars = (char *) sqlite3_column_text(statement, 1);
                char *verseChars = (char *) sqlite3_column_text(statement, 2);
                char *meaningChars = (char *) sqlite3_column_text(statement, 3);
                BOOL isAudio = sqlite3_column_int(statement, 4);
                BOOL isFav = sqlite3_column_int(statement, 5);
                NSString *title = [[NSString alloc] initWithUTF8String:titleChars];
                NSString *meaning = [[NSString alloc] initWithUTF8String:meaningChars];
                NSString *verse = [[NSString alloc] initWithUTF8String:verseChars];
                Padyam *padyam = [[Padyam alloc]initWithPid:uniqueId andTitle:title andMeaning:meaning andVerse:verse andFav:isFav andAudioAvail:isAudio];
                [retval addObject:padyam];
            }
            sqlite3_finalize(statement);
        }
        return retval;
}

- (NSArray *)getAllFavPadyas {
    
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = @"SELECT PId, TitleStr, TextVerse, Meaning, isAudioAvailble, isFav FROM PADYALU where isFav = 1 ORDER BY PId";
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_databae, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int uniqueId = sqlite3_column_int(statement, 0);
            char *titleChars = (char *) sqlite3_column_text(statement, 1);
            char *verseChars = (char *) sqlite3_column_text(statement, 2);
            char *meaningChars = (char *) sqlite3_column_text(statement, 3);
            BOOL isAudio = sqlite3_column_int(statement, 4);
            BOOL isFav = sqlite3_column_int(statement, 5);
            NSString *title = [[NSString alloc] initWithUTF8String:titleChars];
            NSString *meaning = [[NSString alloc] initWithUTF8String:meaningChars];
            NSString *verse = [[NSString alloc] initWithUTF8String:verseChars];
            Padyam *padyam = [[Padyam alloc]initWithPid:uniqueId andTitle:title andMeaning:meaning andVerse:verse andFav:isFav andAudioAvail:isAudio];
            [retval addObject:padyam];
        }
        sqlite3_finalize(statement);
    }
    return retval;
}

@end
