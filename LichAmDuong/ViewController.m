//
//  ViewController.m
//  LichAmDuong
//
//  Created by Tran Van Bang on 9/21/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
{
    NSDateFormatter *dateFomart;
    NSDate *chooseDate;
}

@end

@implementation ViewController
@synthesize tfDuongLich;
@synthesize lbAmLich;
//@synthesize listPopover;
@synthesize btnChonNgay;


- (void)viewDidLoad
{
    [super viewDidLoad];
    dateFomart = [[NSDateFormatter alloc] init];
   	[dateFomart setDateFormat:@"dd/MM/yyyy"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chonNgay:(id)sender {
    
    chooseDate = [NSDate date];
    tfDuongLich.text = [NSString stringWithFormat:@"%@",[dateFomart stringFromDate:chooseDate]];
    CalendarPickerViewController *detail = [[CalendarPickerViewController alloc] initWithNibName:@"CalendarPickerViewController" bundle:nil];
    //self.listPopover = [[UIPopoverController alloc]initWithContentViewController:detail];
    CGRect subview = btnChonNgay.frame;
    detail.view.frame = CGRectMake(0, subview.origin.y + 50, 320, 260);
    [self addChildViewController: detail];
    [detail didMoveToParentViewController:self];
    detail.delegateDatePicker =(id<CalendarSelectDatePickerDelegate>) self;
    [self.view addSubview:detail.view];
}

#pragma mark - Methods

-(void) selectDatePickerWithDate:(NSDate *)date
{
    
    tfDuongLich.text = [NSString stringWithFormat:@"%@",
                        [dateFomart stringFromDate:date]];
    chooseDate = date;
}



- (IBAction)chuyenDoiNgay:(id)sender {
    [self changeDate:chooseDate];
    
}

//Can được tính bằng = (Năm - 4 ) % 10 +1
//Chi xác định bằng = (năm - 4) % 12 +1

- (void) changeDate : (NSDate *) date
{
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:date];
    
    int year = [components year];
    //int month = [components month];
    //int day = [components day];
    
    NSArray *chiArr = @[@"",@"Tý",@"Sửu",@"Dần",@"Mão",@"Thìn",@"Tỵ",@"Ngọ",@"Mùi",@"Thân",@"Dậu",@"Tuất", @"Hợi"];
    NSArray *canArr = @[@"",@"Giáp",@"Ất",@"Bính",@"Đinh",@"Mậu",@"Kỷ",@"Canh",@"Tân",@"Nhân",@"Quý"];
    int can = (year-4)%10+1;
    int chi = (year -4)%12+1;
    
    lbAmLich.text = [NSString stringWithFormat:@"%@ %@",[canArr objectAtIndex:can],[chiArr objectAtIndex:chi]];
}
@end
