//
//  ViewController.m
//  WebViewLoadVideo
//
//  Created by 王力 on 2017/4/24.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

//http://tv.sohu.com/20170420/n489561685.shtml

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadWebViewWithUrlString:@"http://tv.sohu.com/20170420/n489561685.shtml"];
}

- (void)loadWebViewWithUrlString:(NSString *)url {
    NSMutableString *html = [NSMutableString string];
    [html appendString:@"<html><body style='margin:0'><iframe src="];
    [html appendString:url];
    [html appendString:@"width='414' height='232' frameborder='0'></iframe></body></html>"];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:[WKWebViewConfiguration new]];
    [self.view addSubview:webView];
    [webView loadHTMLString:html baseURL:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
