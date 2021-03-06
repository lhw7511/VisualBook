//
//  ViewController.m
//  VisualBook
//
//  Created by beintech on 2022/04/19.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"
@interface ViewController ()
 
@end

@implementation ViewController
@synthesize resultTextView;
@synthesize nameTextField;
@synthesize genreTextField;
@synthesize authorTextField;
@synthesize countLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    Book *book1 = [[Book alloc]init];
    book1.name = @"햄릿";
    book1.genre = @"비극";
    book1.author = @"셰익스피어";

    Book *book2 = [[Book alloc]init];
    book2.name = @"누구를 위하여 종을 울리나";
    book2.genre = @"전쟁소설";
    book2.author = @"헤밍웨이";

    Book *book3 = [[Book alloc]init];
    book3.name = @"죄와 벌";
    book3.genre = @"사실주의";
    book3.author = @"톨스토이";

    myBook = [[BookManager alloc]init];

    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
    
    countLabel.text = [NSString stringWithFormat:@"%li",[myBook countBook]];
}
-(IBAction)showAllBookAction:(id)sender{
    resultTextView.text = [myBook showAllBook];
}
-(IBAction)addBookAction:(id)sender{
    Book * bookTemp =[[Book alloc]init];
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [myBook addBook:bookTemp];
    resultTextView.text = @"등록이 완료되었습니다";
    countLabel.text = [NSString stringWithFormat:@"%li",[myBook countBook]];
}

-(IBAction)textFieldReturn:(id)sender{
    [nameTextField resignFirstResponder];
    [genreTextField resignFirstResponder];
    [authorTextField resignFirstResponder];
}
-(IBAction)findBookAction:(id)sender{
    NSString *strTemp = [myBook findBook:nameTextField.text];
    if(strTemp != nil){
        resultTextView.text = strTemp;
    }else{
        resultTextView.text = @"해당하는 책이 없습니다";
    }
}
-(IBAction)removeBookAction:(id)sender;{
    NSString *strTemp = [myBook removeBook:nameTextField.text];
    
    if(strTemp != nil){
        NSMutableString *str = [[NSMutableString alloc]init];
        [str appendString:strTemp];
        [str appendString:@" 책이 지워졌습니다"];
        resultTextView.text = str;
    }else{
        resultTextView.text = @"해당하는 책이 없습니다";
    }
    countLabel.text = [NSString stringWithFormat:@"%li",[myBook countBook]];
}
@end
