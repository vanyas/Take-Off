//
//  feedbackVC.m
//  Take-Off
//
//  Created by VANGELI ONTIVEROS on 19/08/13.
//  Copyright (c) 2013 com.vanyas. All rights reserved.
//

#import "feedbackVC.h"

@interface feedbackVC ()<UITextViewDelegate>

@end

@implementation feedbackVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendFeedBack:(id)sender {
    
    if (![self.textFeed.text isEqualToString:@""]) {
        [TestFlight submitFeedback:self.textFeed.text];
    }
    
    [self dismissViewControllerAnimated:YES
                             completion:nil];
    
}

- (void)textViewDidEndEditing:(UITextView *)textView{
    [self sendFeedBack:nil];
}
@end
