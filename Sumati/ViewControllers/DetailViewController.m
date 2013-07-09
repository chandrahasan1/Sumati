//
//  DetailViewController.m
//  Sumati
//
//  Created by Chandrahasan Vantaku on 09/07/13.
//  Copyright (c) 2013 Chandrahasan Vantaku. All rights reserved.
//

#import "DetailViewController.h"
#import "PadyaController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [_verseTextView setFont:[UIFont fontWithName:@"Ramaneeya" size:14.0]];
    
//    self.padyasArray = [NSMutableArray array];
//    
//    
//    _pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll
//                                                          navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal
//                                                                        options:[NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:50.0f] forKey:UIPageViewControllerOptionInterPageSpacingKey]];
//    _pageViewController.delegate = self;
//    _pageViewController.dataSource = self;
//    
//    PadyaController *imageViewController = [[PadyaController alloc] init];
//    NSArray *viewControllers = [NSArray arrayWithObject:imageViewController];
//    [self.pageViewController setViewControllers:viewControllers
//                                      direction:UIPageViewControllerNavigationDirectionForward
//                                       animated:NO
//                                     completion:nil];
//    [self addChildViewController:_pageViewController];
//    [self.view addSubview:_pageViewController.view];
//    [_pageViewController didMoveToParentViewController:self];
//    CGRect pageViewRect = self.view.bounds;
//    pageViewRect = CGRectInset(pageViewRect, 10.0, 20.0f);
//    self.pageViewController.view.frame = pageViewRect;
//    self.view.gestureRecognizers = _pageViewController.gestureRecognizers;
    
}

- (void)onClickBack:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)onClickHome:(UIBarButtonItem *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


#pragma mark -
#pragma mark - UIPageViewControllerDelegate Method
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
//    PadyaController *contentVc = (PadyaController *)viewController;
//    FTItem *brandItem = [contentVc brandItem];
//    if (!brandItem) {
//        return nil;
//    }
//    NSUInteger currentIndex = _vcIndex;//[_padyasArray indexOfObject:[contentVc brandItem]];
//    _vcIndex = currentIndex;
//
//    
//    //TODO:Update the current Page if needed here
//    FTItem *model = [_brandsArray objectAtIndex:_vcIndex];
//    
//    if (currentIndex <= 0)
//    {
//        return nil;
//    }
//    FTBrandViewController *imageViewController = [[FTBrandViewController alloc] init];
//    imageViewController.brandItem = [_brandsArray objectAtIndex:currentIndex - 1];
//    return imageViewController;
    return nil;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
//    FTBrandViewController *contentVc = (FTBrandViewController *)viewController;
//    FTItem *brandItem = [contentVc brandItem];
//    if (!brandItem) {
//        return nil;
//    }
//    NSUInteger currentIndex = [_brandsArray indexOfObject:brandItem];
//    _vcIndex = currentIndex;
//    
//    //TODO:Update the current Page if needed here
//    //FTItem *model = [_brandsArray objectAtIndex:_vcIndex];
//    
//    if (currentIndex >= _brandsArray.count - 1)
//    {
//        return nil;
//    }
//    FTBrandViewController *imageViewController = [[FTBrandViewController alloc] init];
//    imageViewController.brandItem = [_brandsArray objectAtIndex:currentIndex + 1];
//    return imageViewController;
    
    return nil;
}

#pragma mark -
#pragma mark - UIPageViewControllerDataSource Method

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return _padyasArray.count;
}
- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}


@end
