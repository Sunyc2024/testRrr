//
//  ViewController.m
//  testXCloudDemo
//
//  Created by sunyc on 2024/8/28.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController ()
@property(nonatomic, strong)UILabel *testLab;
@property(nonatomic, strong)UIButton *testBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.orangeColor;
    [self.view addSubview:self.testLab];
    CLLocationCoordinate2D *coords = malloc(sizeof(CLLocationCoordinate2D) * 2);
    CLLocationCoordinate2D *coord2s = malloc(sizeof(CLLocationCoordinate2D) * 2);
    [self.view addSubview:self.testBtn];
}

-(UILabel *)testLab{
    if (!_testLab) {
        _testLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
        _testLab.center = self.view.center;
        _testLab.text = @"这是一个测试包2";
        _testLab.textColor = UIColor.blackColor;
        _testLab.textAlignment = NSTextAlignmentCenter;
    }
    return _testLab;
}

-(UIButton *)testBtn{
    if (!_testBtn) {
        _testBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
        _testBtn.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
        [_testBtn setTitle:@"点击" forState:UIControlStateNormal];
        [_testBtn setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
        [_testBtn addTarget:self action:@selector(testBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _testBtn;
}

-(void)testBtnAction{
    NSLog(@"点击了按钮");
}

@end
