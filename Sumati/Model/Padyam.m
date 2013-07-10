//
//  Padyam.m
//  Sumati
//
//  Created by Chandrahasan Vantaku on 10/07/13.
//  Copyright (c) 2013 Chandrahasan Vantaku. All rights reserved.
//

#import "Padyam.h"

@implementation Padyam
@synthesize title;
@synthesize meaning;
@synthesize verse;
@synthesize isFav;
@synthesize isAudioAvailble;
@synthesize pID;


- (id)initWithPid:(int)pId
         andTitle:(NSString *)titl
       andMeaning:(NSString *)mean
         andVerse:(NSString *)vers
           andFav:(BOOL)fav
    andAudioAvail:(BOOL)audio {
    
    
    if (self = [super init]) {
        self.title = titl;
        self.verse = vers;
        self.meaning = mean;
        self.isAudioAvailble = audio;
        self.isFav = fav;
        self.pID = pId;
    }
    
    return self;
}
@end
