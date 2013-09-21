//
//  CalendarPickerViewController.m
//  LichAmDuong
//
//  Created by Tran Van Bang on 9/21/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import "CalendarPickerViewController.h"

@interface CalendarPickerViewController ()

@end

@implementation CalendarPickerViewController
@synthesize datePicker;
@synthesize delegateDatePicker;

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
    
    //    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    //    [df setDateFormat:@"dd-MM-yyyy"];
    //	dateText.text = [NSString stringWithFormat:@"%@",
    //                     [df stringFromDate:[NSDate date]]];
    //	[df release];
    
	datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 44, 320, 216)];
	datePicker.datePickerMode = UIDatePickerModeDate;
	datePicker.hidden = NO;
	datePicker.date = [NSDate date];
    
	[datePicker addTarget:self
	               action:@selector(labelChange)
	     forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
    // Do any additional setup after loading the view from its nib.
}

- (void) labelChange
{
    [delegateDatePicker selectDatePickerWithDate:datePicker.date];
}

-(IBAction)dismissView:(id)sender
{
    [self.view removeFromSuperview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
