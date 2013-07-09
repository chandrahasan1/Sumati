//
//  DetailViewController.h
//  Sumati
//
//  Created by Chandrahasan Vantaku on 09/07/13.
//  Copyright (c) 2013 Chandrahasan Vantaku. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UIPageViewControllerDelegate,UIPageViewControllerDataSource>
@property (weak, nonatomic) IBOutlet UITextView *verseTextView;
@property (nonatomic, strong) UIPageViewController *pageViewController;
@property (nonatomic, strong) NSMutableArray *padyasArray;
@property (nonatomic) NSUInteger vcIndex;
@end

