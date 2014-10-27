//
//  NewWebViewController.h
//  Any.2DO
//
//  Created by Milan Shah on 8/3/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewWebViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic,strong) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIToolbar *textField;
- (IBAction)visitWebPage:(id)sender;

@end
