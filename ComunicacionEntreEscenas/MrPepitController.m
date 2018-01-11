//
//  MrPepitController.m
//  ComunicacionEntreEscenas
//
//  Created by cice on 11/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import "MrPepitController.h"

@interface MrPepitController ()

@property (weak, nonatomic) IBOutlet UITextView *vistaTexto;
@property (nonatomic) NSMutableString * conversacion;

@end

@implementation MrPepitController

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        self.conversacion = [[NSMutableString alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        self.vistaTexto.text = self.conversacion;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)botonSaludo:(id)sender {
    [self.conversacion appendString:@"- Hello Saint Joseph"];
    [self.conversacion appendString:@"\n"];
    
    [self.delegado recibirSaludo:self.conversacion];
}

- (IBAction)botonInsulto:(id)sender {
    [self.conversacion appendString:@"- Who the fuck are you?"];
    [self.conversacion appendString:@"\n"];
    
    [self.delegado recibirInsulto:self.conversacion];
}

-(void)recibirSaludo: (NSString*)mensaje
{
    [self.conversacion appendString:mensaje];
    [self.conversacion appendString:@"\n"];
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
