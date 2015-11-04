//
//  ViewController.m
//  SearchDemo
//
//  Created by apple2 on 15/10/27.
//  Copyright (c) 2015年 apple2. All rights reserved.
//

#import "ViewController.h"
#import "MainTableViewController.h"

@interface ViewController ()

@property(nonatomic,retain)MainTableViewController *MainTableView;
@property(nonatomic,retain)UISearchController *searchController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    self.title = @"首页";
    self.title = @"首页";
    
    
        self.title = @"首页";    self.title = @"首页";    self.title = @"首页";    self.title = @"首页";    self.title = @"首页";    self.title = @"首页";    self.title = @"首页";

    self.MainTableView = [[MainTableViewController alloc]init];
    [self rn_addChildViewController:self.MainTableView];
    
    self.searchController = [[UISearchController alloc]initWithSearchResultsController:self.MainTableView];
    //要忙起来了
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.MainTableView.view.frame = CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height-64);
    
}

- (BOOL)shouldAutomaticallyForwardAppearanceMethods {
    return YES;
}


- (void)rn_addChildViewController:(UIViewController *)controller {
    [controller beginAppearanceTransition:YES animated:NO];
    [controller willMoveToParentViewController:self];
    [self addChildViewController:controller];
    [self.view addSubview:controller.view];
    [controller didMoveToParentViewController:controller];
    [controller endAppearanceTransition];
}

- (void)rn_removeChildViewController:(UIViewController *)controller {
    if ([self.childViewControllers containsObject:controller]) {
        [controller beginAppearanceTransition:NO animated:NO];
        [controller willMoveToParentViewController:nil];
        [controller.view removeFromSuperview];
        [controller removeFromParentViewController];
        [controller didMoveToParentViewController:nil];
        [controller endAppearanceTransition];
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.MainTableView.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
