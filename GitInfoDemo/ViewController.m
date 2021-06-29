//
//  ViewController.m
//  GitInfoDemo
//
//  Created by Jihua Huang on 2021/6/29.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *buildInfoLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.title = @"GitInfoDemo";

    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile: [[NSBundle mainBundle] pathForResource: @"BuildInfo" ofType: @"plist"]];
    self.buildInfoLabel.text = [NSString stringWithFormat: @"Version: %@\nBuild: %@", dictionary[@"GitInfo"], dictionary[@"BuildTime"]];
}

@end
