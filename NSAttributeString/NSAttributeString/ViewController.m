//
//  ViewController.m
//  NSAttributeString
//
//  Created by 宓珂璟 on 16/7/17.
//  Copyright © 2016年 UITableView. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;
@property (weak, nonatomic) IBOutlet UILabel *label6;
@property (weak, nonatomic) IBOutlet UILabel *label7;
@property (weak, nonatomic) IBOutlet UILabel *label8;
@property (weak, nonatomic) IBOutlet UILabel *label9;
@property (weak, nonatomic) IBOutlet UILabel *label10;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 前三个展示
    NSString *string = @"落霞与孤鹜齐飞,秋水共长天一色";
    NSMutableAttributedString *mutableAttriteStr = [[NSMutableAttributedString alloc] init];
    NSAttributedString *attributeStr1 = [[NSAttributedString alloc] initWithString:[string substringWithRange:NSMakeRange(0, 3)] attributes:@{NSFontAttributeName :[UIFont fontWithName:@"futura" size:12],NSForegroundColorAttributeName : [UIColor redColor],NSBackgroundColorAttributeName : [UIColor yellowColor]}];
    NSAttributedString *attributeStr4 = [[NSAttributedString alloc] initWithString:[string substringWithRange:NSMakeRange(3, 4)] attributes:@{NSFontAttributeName :[UIFont fontWithName:@"futura" size:22],NSForegroundColorAttributeName : [UIColor redColor],NSBackgroundColorAttributeName : [UIColor yellowColor]}];
    NSAttributedString *attributeStr2 = [[NSAttributedString alloc] initWithString:[string substringWithRange:NSMakeRange(8, 4)] attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:22],NSForegroundColorAttributeName : [UIColor blackColor],NSBackgroundColorAttributeName : [UIColor lightGrayColor]}];
     NSAttributedString *attributeStr5 = [[NSAttributedString alloc] initWithString:[string substringWithRange:NSMakeRange(12, 3)] attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:12],NSForegroundColorAttributeName : [UIColor blackColor],NSBackgroundColorAttributeName : [UIColor lightGrayColor]}];
    NSAttributedString *attriteStr3 = [[NSAttributedString alloc] initWithString:[string substringWithRange:NSMakeRange(7, 1)] attributes:@{NSBackgroundColorAttributeName : [UIColor greenColor]}];
    [mutableAttriteStr appendAttributedString:attributeStr1];
    [mutableAttriteStr appendAttributedString:attributeStr4];
    [mutableAttriteStr appendAttributedString:attriteStr3];
   
    [mutableAttriteStr appendAttributedString:attributeStr2];
     [mutableAttriteStr appendAttributedString:attributeStr5];
    self.label1.attributedText = mutableAttriteStr;
    
    // 连体艺术字，不是每个都能连起的，f和l  f和i就可以，其他各位可以自己去试试
    self.label2.attributedText = [[NSAttributedString alloc] initWithString:@"flush and fily" attributes:@{NSLigatureAttributeName : [NSNumber numberWithInt:1],NSFontAttributeName : [UIFont fontWithName:@"futura" size:30]}];
    
    NSMutableAttributedString *mutableAttributeStr2 = [[NSMutableAttributedString alloc] init];
    NSAttributedString *string6 = [[NSAttributedString alloc] initWithString:@"ABCDE " attributes:@{NSKernAttributeName : [NSNumber numberWithInt:-3],NSForegroundColorAttributeName : [UIColor redColor]}];
    NSAttributedString *string7 = [[NSAttributedString alloc] initWithString:@"FGHIJ " attributes:@{NSKernAttributeName : [NSNumber numberWithInt:0],NSForegroundColorAttributeName : [UIColor yellowColor]}];
    NSAttributedString *string8 = [[NSAttributedString alloc] initWithString:@"KLMNO " attributes:@{NSKernAttributeName : @(15),NSForegroundColorAttributeName : [UIColor blueColor]}];
    [mutableAttributeStr2 appendAttributedString:string6];
    [mutableAttributeStr2 appendAttributedString:string7];
    [mutableAttributeStr2 appendAttributedString:string8];
    self.label3.attributedText = mutableAttributeStr2;
    
//    typedef NS_ENUM(NSInteger, NSUnderlineStyle) {
//        NSUnderlineStyleNone                                    = 0x00, 没有
//        NSUnderlineStyleSingle                                  = 0x01, 单根
//        NSUnderlineStyleThick NS_ENUM_AVAILABLE(10_0, 7_0)      = 0x02, 单粗
//        NSUnderlineStyleDouble NS_ENUM_AVAILABLE(10_0, 7_0)             双根
    NSMutableAttributedString *mutableAttributeStr3 = [[NSMutableAttributedString alloc] init];
    NSAttributedString *string9 = [[NSAttributedString alloc] initWithString:@"只要998  " attributes:@{NSStrikethroughStyleAttributeName : @(NSUnderlineStyleSingle),NSStrikethroughColorAttributeName : [UIColor redColor]}];
    NSAttributedString *string10 = [[NSAttributedString alloc] initWithString:@"真的998  " attributes:@{NSStrikethroughStyleAttributeName : @(NSUnderlineStyleThick),NSStrikethroughColorAttributeName : [UIColor blueColor]}];
    NSAttributedString *string11 = [[NSAttributedString alloc] initWithString:@"好吧9块拿走" attributes:@{NSStrikethroughStyleAttributeName : @(NSUnderlineStyleDouble),NSStrikethroughColorAttributeName : [UIColor yellowColor]}];
    
    [mutableAttributeStr3 appendAttributedString:string9];
    [mutableAttributeStr3 appendAttributedString:string10];
    [mutableAttributeStr3 appendAttributedString:string11];
    self.label4.attributedText = mutableAttributeStr3;
    
    
    NSMutableAttributedString *mutableAttributeStr4 = [[NSMutableAttributedString alloc] init];
    NSAttributedString *string12 = [[NSAttributedString alloc] initWithString:@"只要888  " attributes:@{NSUnderlineStyleAttributeName : @(NSUnderlineStyleSingle),NSUnderlineColorAttributeName : [UIColor redColor]}];
    NSAttributedString *string13 = [[NSAttributedString alloc] initWithString:@"真的88  " attributes:@{NSUnderlineStyleAttributeName : @(NSUnderlineStyleThick),NSUnderlineColorAttributeName : [UIColor purpleColor]}];
    NSAttributedString *string14 = [[NSAttributedString alloc] initWithString:@"好吧8块拿走" attributes:@{NSUnderlineStyleAttributeName : @(NSUnderlineStyleDouble),NSUnderlineColorAttributeName : [UIColor yellowColor]}];
    
    [mutableAttributeStr4 appendAttributedString:string12];
    [mutableAttributeStr4 appendAttributedString:string13];
    [mutableAttributeStr4 appendAttributedString:string14];
    self.label5.attributedText = mutableAttributeStr4;
    
    NSMutableAttributedString *mutableAttributeStr5 = [[NSMutableAttributedString alloc] init];
    // 如果这个stroke的width正数的时候，字体就中空了，那么前景色就设置无效了
    NSAttributedString *string15 = [[NSAttributedString alloc] initWithString:@"HELLO " attributes:@{NSStrokeWidthAttributeName : @(5),NSStrokeColorAttributeName : [UIColor yellowColor],NSFontAttributeName : [UIFont boldSystemFontOfSize:30],NSForegroundColorAttributeName : [UIColor redColor]}];
    NSAttributedString *string16 = [[NSAttributedString alloc] initWithString:@"YUKD  " attributes:@{NSStrokeWidthAttributeName : @(0),NSStrokeColorAttributeName : [UIColor redColor],NSFontAttributeName : [UIFont boldSystemFontOfSize:30]}];
    NSAttributedString *string17 = [[NSAttributedString alloc] initWithString:@"GOOGLE" attributes:@{NSStrokeWidthAttributeName : @(-5),NSStrokeColorAttributeName : [UIColor greenColor],NSFontAttributeName : [UIFont boldSystemFontOfSize:30],NSForegroundColorAttributeName : [UIColor lightGrayColor]}];
    
    [mutableAttributeStr5 appendAttributedString:string15];
    [mutableAttributeStr5 appendAttributedString:string16];
    [mutableAttributeStr5 appendAttributedString:string17];
    self.label6.attributedText = mutableAttributeStr5;
    
    // 设置阴影
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowBlurRadius = 5.0f; // 模糊度
    shadow.shadowColor = [UIColor blueColor];
    shadow.shadowOffset = CGSizeMake(1, 5);
    NSAttributedString *string20 = [[NSAttributedString alloc] initWithString:@"HELLO_HALY_璟" attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:30],NSForegroundColorAttributeName : [UIColor redColor],NSShadowAttributeName : shadow}];
    
    self.label7.attributedText = string20;
    
    
    // 文本印刷，我也不知道是什么鬼
    // 设置阴影
    NSAttributedString *string21 = [[NSAttributedString alloc] initWithString:@"HELLO_HALY_璟" attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:30],NSForegroundColorAttributeName : [UIColor redColor],NSShadowAttributeName : shadow,NSTextEffectAttributeName : NSTextEffectLetterpressStyle}];
    
    self.label8.attributedText = string21;
    
    // 设置文本的基线 负数向下  正数向上  0不变
    UIFont *bigFont = [UIFont boldSystemFontOfSize:36];
    UIFont *smallFont = [UIFont boldSystemFontOfSize:bigFont.pointSize / 2];
    CGFloat capHeight = bigFont.pointSize - smallFont.pointSize;
    NSMutableAttributedString *attributeString6 = [[NSMutableAttributedString alloc] init];
    NSAttributedString *string22 = [[NSAttributedString alloc] initWithString:@"￥" attributes:@{NSFontAttributeName : smallFont,NSForegroundColorAttributeName : [UIColor blackColor],NSBaselineOffsetAttributeName : @(0)}];
    NSAttributedString *string23 = [[NSAttributedString alloc] initWithString:@"9" attributes:@{NSFontAttributeName : bigFont,NSForegroundColorAttributeName : [UIColor blueColor],NSBaselineOffsetAttributeName : @(0)}];
    NSAttributedString *string24 = [[NSAttributedString alloc] initWithString:@".99" attributes:@{NSFontAttributeName : smallFont,NSForegroundColorAttributeName : [UIColor blackColor],NSBaselineOffsetAttributeName : @(0)}];
    
    
    NSAttributedString *string28 = [[NSAttributedString alloc] initWithString:@"    七夕大促销    " attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:24],NSForegroundColorAttributeName : [UIColor blackColor],NSBaselineOffsetAttributeName : @(0),NSShadowAttributeName : shadow}];
    
    NSAttributedString *string25 = [[NSAttributedString alloc] initWithString:@"￥" attributes:@{NSFontAttributeName : smallFont,NSForegroundColorAttributeName : [UIColor blackColor],NSBaselineOffsetAttributeName : @(capHeight - 5)}];
    NSAttributedString *string26 = [[NSAttributedString alloc] initWithString:@"0" attributes:@{NSFontAttributeName : bigFont,NSForegroundColorAttributeName : [UIColor redColor],NSBaselineOffsetAttributeName : @(0)}];
    NSAttributedString *string27 = [[NSAttributedString alloc] initWithString:@".09" attributes:@{NSFontAttributeName : smallFont,NSForegroundColorAttributeName : [UIColor blackColor],NSBaselineOffsetAttributeName : @(capHeight - 5)}];
    [attributeString6 appendAttributedString:string22];
    [attributeString6 appendAttributedString:string23];
    [attributeString6 appendAttributedString:string24];
    [attributeString6 appendAttributedString:string28];
    [attributeString6 appendAttributedString:string25];
    [attributeString6 appendAttributedString:string26];
    [attributeString6 appendAttributedString:string27];
    self.label9.attributedText = attributeString6;
    
    NSMutableAttributedString *attributeString7 = [[NSMutableAttributedString alloc] init];
    
    NSAttributedString *string29 = [[NSAttributedString alloc] initWithString:@"Hello  " attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:40],NSForegroundColorAttributeName : [UIColor blackColor],NSBaselineOffsetAttributeName : @(0)}];
    NSAttributedString *string30 = [[NSAttributedString alloc] initWithString:@"  World    " attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:20],NSForegroundColorAttributeName : [UIColor blackColor],NSBaselineOffsetAttributeName : @(0)}];
    
    NSAttributedString *string31 = [[NSAttributedString alloc] initWithString:@"Hello  " attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:40],NSForegroundColorAttributeName : [UIColor blackColor],NSBaselineOffsetAttributeName : @(0)}];
    NSAttributedString *string32 = [[NSAttributedString alloc] initWithString:@"  World" attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:20],NSForegroundColorAttributeName : [UIColor blackColor],NSBaselineOffsetAttributeName : @(6)}];
    
    
    [attributeString7 appendAttributedString:string29];
    [attributeString7 appendAttributedString:string30];
    [attributeString7 appendAttributedString:string31];
    [attributeString7 appendAttributedString:string32];
    self.label10.attributedText = attributeString7;
    
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithTitle:@"去下一页" style:UIBarButtonItemStylePlain target:self action:@selector(click:)];
    
    self.navigationItem.rightBarButtonItem = right;
}


- (void)click:(UIBarButtonItem *)button
{
    SecondViewController *secon = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secon animated:YES];
}



- (void)attributeString
{
    NSFontAttributeName               设置字体大小和字体的类型 默认12 Helvetica(Neue)
    NSForegroundColorAttributeName    设置字体颜色，默认黑色 UIColor对象
    NSBackgroundColorAttributeName    设置字体所在区域的背景颜色，默认为nil，透明色
    NSLigatureAttributeName           设置连体属性，NSNumber对象 默认0 没有连体
    NSKernAttributeName               设置字符间距， NSNumber浮点型属性 正数间距加大，负数间距缩小
    NSStrikethroughStyleAttributeName 设置删除线，NSNumber对象
    NSStrikethroughColorAttributeName 设置删除线颜色，UIColor对象，默认是黑色
    NSUnderlineStyleAttributeName     设置下划线，NSNumber对象 NSUnderlineStyle枚举值
    NSUnderlineColorAttributeName     设置下划线颜色，UIColor对象，默认是黑色
    NSStrokeWidthAttributeName        设置笔画宽度，NSNumber对象 正数中空 负数填充
    NSStrokeColorAttributeName        设置填充部分颜色，不是指字体颜色，UIColor对象
    NSShadowAttributeName             设置阴影属性，取值为NSShadow对象
    NSTextEffectAttributeName         设置文本特殊效果 NSString对象 只有图版印刷效果可用
    NSBaselineOffsetAttributeName     设置基线偏移量，NSNumber float对象 正数向上偏移，负数向下偏移
    NSObliquenessAttributeName        设置字体倾斜度，NSNumber float对象，正数右倾斜，负数左倾斜
    NSExpansionAttributeName          设置文本横向拉伸属性，NSNumber float对象，正数横向拉伸文本，负数压缩
    NSWritingDirectionAttributeName   设置文字书写方向，从左向右或者右向左
    NSVerticalGlyphFormAttributeName  设置文本排版方向，NSNumber对象。0 横向排版，1 竖向排版
    NSLinkAttributeName               设置文本超链接，点击可以打开指定URL地址
    NSAttachmentAttributeName         设置文本附件，取值为NSTextAttachment对象，一般为图文混排
    NSParagraphStyleAttributeName     设置文本段落排版，为NSParagraphStyle对象
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
