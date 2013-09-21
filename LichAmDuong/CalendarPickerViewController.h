//
//  CalendarPickerViewController.h
//  LichAmDuong
//
//  Created by Tran Van Bang on 9/21/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CalendarSelectDatePickerDelegate <NSObject>
-(void) selectDatePickerWithDate : (NSDate *) date;

@end

@interface CalendarPickerViewController : UIViewController

@property(nonatomic,retain)  UIDatePicker *datePicker;
@property (weak,nonatomic) id <CalendarSelectDatePickerDelegate> delegateDatePicker;

-(IBAction)dismissView:(id)sender;

@end
