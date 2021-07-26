//
//  ModalViewController.m
//  AppObjc
//
//  Created by Samuel Sales on 23/07/21.
//
#import "ModalViewController.h"


@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.blueColor;
    [self setupNavigationBar];
    [self.view addSubview: self.navigationBar];
    [self constraintsNavigationBar];
    self.view.layer.cornerRadius = 10;
    self.view.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
}

- (void)setupNavigationBar {
    self.navigationBar = UINavigationBar.new;
    self.navigationBar.layer.cornerRadius = 10;
    self.navigationBar.clipsToBounds = true;
    self.navigationBar.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    
    UINavigationItem *navItem = UINavigationItem.new;
    navItem.title = @"Title";
    navItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left Button" style:UIBarButtonItemStylePlain target:self action:nil];
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Right Button" style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationBar.items = @[navItem];
    self.navigationBar.translatesAutoresizingMaskIntoConstraints = false;
}

- (void)constraintsNavigationBar {    
    [self.navigationBar.heightAnchor constraintEqualToConstant:43].active = YES;
    [self.navigationBar.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [self.navigationBar.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
}


@end
