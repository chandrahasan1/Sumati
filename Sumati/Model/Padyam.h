//
//  Padyam.h
//  Sumati
//
//  Created by Chandrahasan Vantaku on 10/07/13.
//  Copyright (c) 2013 Chandrahasan Vantaku. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Padyam : NSObject
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *meaning;
@property (nonatomic, strong) NSString *verse;
@property (nonatomic, assign) BOOL isFav;
@property (nonatomic, assign) BOOL isAudioAvailble;
@property (nonatomic, assign) int pID;


- (id)initWithPid:(int)pId
         andTitle:(NSString *)titl
       andMeaning:(NSString *)mean
         andVerse:(NSString *)vers
           andFav:(BOOL)fav
    andAudioAvail:(BOOL)audio;
@end
