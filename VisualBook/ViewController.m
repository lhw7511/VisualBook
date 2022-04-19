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
}
-(IBAction)showAllBookAction:(id)sender{
    NSLog(@"%@",[myBook showAllBook]);
}

@end
