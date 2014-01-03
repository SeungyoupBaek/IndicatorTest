//
//  ViewController.m
//  IndicatorTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator1;
// 코드를 이용해서 작성
@property (strong, nonatomic) UIActivityIndicatorView *indicator2;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _indicator2 = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    _indicator2.hidesWhenStopped = YES;
    _indicator2.center = CGPointMake(160, 200);
    [self.view addSubview:_indicator2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)startIndicator :(id)sender{
    [_indicator1 startAnimating];
    [_indicator2 performSelector:@selector(startAnimating) withObject:nil afterDelay:0.3];
}
-(IBAction)stopIndicator:(id)sender{
    [_indicator1 stopAnimating];
    [_indicator2 performSelector:@selector(stopAnimating) withObject:nil afterDelay:0.7];
}

@end
