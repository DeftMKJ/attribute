//
//  SecondViewController.m
//  NSAttributeString
//
//  Created by 宓珂璟 on 16/8/6.
//  Copyright © 2016年 UITableView. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *label3;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowBlurRadius = 8.0f;
    shadow.shadowColor = [UIColor blackColor];
    shadow.shadowOffset = CGSizeMake(1, 6);
//    说明：NSVerticalGlyphFormAttributeName 设置文字排版方向，取值为NSNumber对象（整数），0表示横排文本，1表示竖排文本 在iOS中只支持0
//说明：NSObliquenessAttributeName 设置字体倾斜度，取值为 NSNumber（float），正值右倾，负值左倾
//    NSExpansionAttributeName
//    说明：NSExpansionAttributeName 设置字体的横向拉伸，取值为NSNumber （float），正值拉伸 ，负值压缩
    NSMutableAttributedString *mutableAttriteStr = [[NSMutableAttributedString alloc] init];
    NSAttributedString *attributeStr1 = [[NSAttributedString alloc] initWithString:@"HeHe_XiXi_mm" attributes:@{NSFontAttributeName :[UIFont boldSystemFontOfSize:30],NSForegroundColorAttributeName : [UIColor redColor],NSShadowAttributeName : shadow,NSObliquenessAttributeName : @(1),NSExpansionAttributeName : @(1),NSVerticalGlyphFormAttributeName : @(1)}];
    [mutableAttriteStr appendAttributedString:attributeStr1];
    self.label1.attributedText = mutableAttriteStr;
    
    // 文字书写方向
//    The values of the NSNumber objects should be 0, 1, 2, or 3, for LRE, RLE, LRO, or RLO respectively, and combinations of leftToRight and rightToLeft with NSTextWritingDirectionEmbedding or NSTextWritingDirectionOverride, as shown in Table 1.
//    NSWritingDirectionLeftToRight | NSTextWritingDirectionEmbedding
//    NSWritingDirectionRightToLeft | NSTextWritingDirectionEmbedding
//    NSWritingDirectionLeftToRight | NSTextWritingDirectionOverride
//    NSWritingDirectionRightToLeft | NSTextWritingDirectionOverride
    NSMutableAttributedString *attributuStr2 = [[NSMutableAttributedString alloc] init];
    NSAttributedString *string1 = [[NSAttributedString alloc] initWithString:@"一切皆有可能" attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:24],NSForegroundColorAttributeName : [UIColor redColor],NSWritingDirectionAttributeName : @[@(3)]}];
    [attributuStr2 appendAttributedString:string1];
    self.label.attributedText = attributuStr2;
    
    
//    把 NSLinkAttributeName 属性单独列出来，是因为在 UILabel 和 UITextField 中是无法使用该属性的。更准确点说是在UILabel 和 UITextField 中无法实现点击链接启动浏览器打开一个URL地址，因为在此过程中用到了一个代理函数。只能用在 UITextView 中
    self.textView.delegate = self;
    self.textView.scrollEnabled = NO;
    self.textView.editable = NO;
    self.textView.textContainer.lineFragmentPadding = 0;
    self.textView.textContainerInset = UIEdgeInsetsMake(0, 0, 0, 0);
    NSString *str = @"  跳转到宓珂璟的博客";
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc]initWithString:str];
    [attrStr addAttribute:NSLinkAttributeName value:[NSURL URLWithString:@"http://blog.csdn.net/deft_mkjing"] range:[str rangeOfString:@"宓珂璟的博客"]];
    [attrStr addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:30] range:NSMakeRange(0, str.length)];
    self.textView.attributedText = attrStr;
    
//    NSAttachmentAttributeName                               
    
    NSString *words = @"天才";
    NSMutableAttributedString *strAtt = [[NSMutableAttributedString alloc] initWithString:words attributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:25]}];
    NSTextAttachment *attatch = [[NSTextAttachment alloc] initWithData:nil ofType:nil];
    attatch.bounds = CGRectMake(0, 0, 40, 30);
    attatch.image = [UIImage imageNamed:@"$DCZ2WLN9RWI6JF(Q`P_(NH.jpg"];
    NSTextAttachment *attatch1 = [[NSTextAttachment alloc] initWithData:nil ofType:nil];
    attatch1.bounds = CGRectMake(0, 0, 50, 30);
    attatch1.image = [UIImage imageNamed:@"%5T@J(4WKWSOX2~~PY0{4M0.jpg"];
    NSAttributedString *string8 = [NSAttributedString attributedStringWithAttachment:attatch];
    NSAttributedString *string9 = [NSAttributedString attributedStringWithAttachment:attatch1];
    [strAtt insertAttributedString:string8 atIndex:1];
    [strAtt insertAttributedString:string9 atIndex:0];
    self.label3.attributedText = strAtt;
    
    
    
    
    
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
{
    
    NSLog(@"点击链接跳转到我这里");
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
