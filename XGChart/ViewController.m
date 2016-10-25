//
//  ViewController.m
//  XGChart
//
//  Created by 宋晓光 on 25/10/2016.
//  Copyright © 2016 Light. All rights reserved.
//

#import "ViewController.h"

#import "XGChart.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  //  configuration
  XGChartConfiguration *configuration = [[XGChartConfiguration alloc] init];
  configuration.chartType = XGChartTypeLineChart;
  configuration.paddingTop = 20;
  configuration.paddingLeft = 20;
  configuration.paddingBottom = 20;
  configuration.paddingRight = 20;
  configuration.xGridCount = 3;
  configuration.yGridCount = 4;
  configuration.gridColor = [UIColor grayColor];
  configuration.xAxisLabelColor = [UIColor whiteColor];
  configuration.xAxisLabelFontSize = 12;
  configuration.yAxisLabelColor = [UIColor whiteColor];
  configuration.yAxisLabelFontSize = 12;
  NSMutableArray<XGChartPoint *> *chartPoints = [[NSMutableArray alloc] init];
  for (int i = 1; i < 31; i++) {
    XGChartPoint *point =
        [[XGChartPoint alloc] initWithX:i andY:arc4random_uniform(100)];
    [chartPoints addObject:point];
  }
  configuration.chartPoints = chartPoints;
  configuration.strokeColor = [UIColor redColor];
  configuration.fillColor = [UIColor redColor];
  configuration.lineWidth = 3;
  //  line chart
  XGChart *lineChart = [[XGChart alloc]
      initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width,
                               (self.view.bounds.size.height - 64) / 3)
      configuration:configuration];
  lineChart.backgroundColor = [UIColor blackColor];
  [self.view addSubview:lineChart];

  //  configuration
  configuration.chartType = XGChartTypeCurveChart;
  configuration.strokeColor = [UIColor orangeColor];
  configuration.fillColor = [UIColor orangeColor];
  //  curve chart
  XGChart *curveChart = [[XGChart alloc]
      initWithFrame:CGRectMake(0, CGRectGetMaxY(lineChart.frame),
                               self.view.bounds.size.width,
                               lineChart.frame.size.height)
      configuration:configuration];
  curveChart.backgroundColor = [UIColor blackColor];
  [self.view addSubview:curveChart];

  //  configuration
  configuration.chartType = XGChartTypeBarChart;
  configuration.xGridCount = 0;
  configuration.lineWidth = 5;
  configuration.strokeColor = [UIColor whiteColor];
  configuration.fillColor = [UIColor yellowColor];
  //  bar chart
  XGChart *barChart = [[XGChart alloc]
      initWithFrame:CGRectMake(0, CGRectGetMaxY(curveChart.frame),
                               self.view.bounds.size.width,
                               lineChart.frame.size.height)
      configuration:configuration];
  barChart.backgroundColor = [UIColor blackColor];
  [self.view addSubview:barChart];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
