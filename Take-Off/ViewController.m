//
//  ViewController.m
//  Take-Off
//
//  Created by VANGELI ONTIVEROS on 19/08/13.
//  Copyright (c) 2013 com.vanyas. All rights reserved.
//

#import "ViewController.h"
#import "feedbackVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *crashButton = [[UIButton alloc] initWithFrame:CGRectMake(20.0, 20.0, 280.0, 44.0)];
    [crashButton setTitle:@"Crash" forState:UIControlStateNormal];
    [crashButton setBackgroundColor:[UIColor blueColor]];
    [crashButton addTarget:self action:@selector(crash:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:crashButton];
    // Create Checkpoint Button
    UIButton *checkpointButton = [[UIButton alloc] initWithFrame:CGRectMake(20.0, 72.0, 280.0, 44.0)];
    [checkpointButton setTitle:@"Checkpoint" forState:UIControlStateNormal];
    [checkpointButton setBackgroundColor:[UIColor blueColor]];
    [checkpointButton addTarget:self action:@selector(checkpoint:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:checkpointButton];
    // Create Feedback Button
    UIButton *feedbackButton = [[UIButton alloc] initWithFrame:CGRectMake(20.0, 124.0, 280.0, 44.0)];
    [feedbackButton setTitle:@"Feedback" forState:UIControlStateNormal];
    [feedbackButton setBackgroundColor:[UIColor blueColor]];
    [feedbackButton addTarget:self action:@selector(feedback:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:feedbackButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)crash:(id)sender {
    NSArray *array = @[@"one"];
    NSLog(@"%@", [array objectAtIndex:1]);
}


- (void)checkpoint:(id)sender {
    [TestFlight passCheckpoint:@"User did click checkpoint button."];
}

- (void)feedback:(id)sender {
    [self presentViewController:[feedbackVC new]
                       animated:YES
                     completion:nil];
}

@end
