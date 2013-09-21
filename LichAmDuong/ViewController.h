//
//  ViewController.h
//  LichAmDuong
//
//  Created by Tran Van Bang on 9/21/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarPickerViewController.h"

@interface ViewController : UIViewController <CalendarSelectDatePickerDelegate>
@property (strong, nonatomic) IBOutlet UITextField *tfDuongLich;
@property (strong, nonatomic) IBOutlet UILabel *lbAmLich;
@property (strong, nonatomic) IBOutlet UIButton *btnChonNgay;
//@property (nonatomic, retain) UIPopoverController *listPopover;
- (IBAction)chonNgay:(id)sender;
- (IBAction)chuyenDoiNgay:(id)sender;

@end
