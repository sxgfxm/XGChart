# XGChart
iOS Chart Plot Diagram 图表, Line Chart, Curve Chart, Bar Chart, Gradient Chart

## Introduction

[XGChart](https://github.com/sxgfxm/XGChart)是一个简洁的iOS 图表库，可以快速集成自定义折线图，曲线图和条形图。

## Install

首先，下载**XGChart**，将**XGChart**文件夹拖入工程。

![import](http://ofj92itlz.bkt.clouddn.com/XGChart:import2.jpeg)

然后，导入**XGChart.h**头文件，配置参数，创建即可。

```objective-c
#import "XGChart.h"
```

```objective-c
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

```

## Result

![](http://ofj92itlz.bkt.clouddn.com/XGChart:result2.png)

