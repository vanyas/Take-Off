//
//  feedbackVC.h
//  Take-Off
//
//  Created by VANGELI ONTIVEROS on 19/08/13.
//  Copyright (c) 2013 com.vanyas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface feedbackVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textFeed;
- (IBAction)sendFeedBack:(id)sender;

@end
