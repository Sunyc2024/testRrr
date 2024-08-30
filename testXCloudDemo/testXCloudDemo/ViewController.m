//
//  ViewController.m
//  testXCloudDemo
//
//  Created by sunyc on 2024/8/28.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong)UILabel *testLab;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.orangeColor;
    [self.view addSubview:self.testLab];
}

-(UILabel *)testLab{
    if (!_testLab) {
        _testLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
        _testLab.center = self.view.center;
        _testLab.text = @"这是一个测试包1";
        _testLab.textColor = UIColor.blackColor;
        _testLab.textAlignment = NSTextAlignmentCenter;
    }
    return _testLab;
}

@end
