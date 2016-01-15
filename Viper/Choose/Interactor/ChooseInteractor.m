//
//  ChooseInteractor.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseInteractor.h"

#import "ChooseInteractorOutput.h"

#import "Mapper.h"

@implementation ChooseInteractor

#pragma mark - Методы ChooseInteractorInput

- (void)requestData {
    [self updatePresenter];
}

- (void)updatePresenter {
    
    NSArray *news = @[@{@"publicator" : @"NYT", @"mainText" : @"Lorem ipsum", @"text" : [self loreimText]},
                      @{@"publicator" : @"Me", @"mainText" : @"My text", @"text" : [self myText]}];
    
    [self.output updatePresenterWithText:[Mapper mapperDictionaryForNews:news]];
}

- (NSString *)loreimText {
    return @"Lorem ipsum dolor sit amet, saepe recteque ea quo. Ut posse audiam utamur mea, nostrud dignissim vix ex, sit ea quaeque verterem. Discere lucilius est te, in sed falli graecis. Altera suavitate et pro, et facilisis persequeris referrentur has, eu his dolore debitis indoctum. Usu volutpat definitionem no, dicant nonumes electram at pri. Vim ornatus appareat adolescens no. Unum nominati in mea. Habeo equidem at sea, mundi vocibus salutatus at eos. Est an tantas blandit abhorreant. Oratio scripta legendos his no, et mei aliquam efficiendi. Ut aperiam vocibus evertitur qui. Vel ad debet mentitum neglegentur. Nullam eligendi voluptatibus qui ei, amet tractatos mediocrem ei sed. Id possit fastidii mandamus vis. Duo tale elitr ea, iudico eligendi percipitur quo id. Antiopam electram urbanitas nam id. Diam quaestio vix te. Et vix tempor eruditi volutpat, diam petentium no eos. Ius ei dicat impedit. Ex ipsum idque nullam nam, an pri legere admodum. Libris maiestatis ex vim. No cum maiorum temporibus, vis no labore dolorem noluisse, modus recusabo vix in. Ea nonumy molestie quo. Vis cu autem tantas, te nam sapientem adversarium, vix quaeque facilisis definitionem te. Eu iusto deleniti interpretaris his, no amet nostrum cum. Ne iuvaret equidem necessitatibus sed. Ad nec augue sanctus, verear periculis et pri. Dicam inermis his te.";
}

- (NSString *)myText {
    return @"There is no known antidote to the drug, the chief neuroscientist at the hospital in Rennes said. Of the five men in hospital, three could have permanent brain damage, Gilles Edan added. Reports that the drug is a cannabis-based painkiller have been denied by the health ministry. The trial, which involved taking the drug orally and has now been suspended, was conducted by a private laboratory in Rennes. The experimental drug was manufactured by the Portuguese company Bial. All those who volunteered for the trial have been recalled and the Paris prosecutor's office has opened an investigation. Health Minister Marisol Touraine pledged to get to the bottom... of this tragic accident I was overwhelmed by their distress she told reporters. Their lives have been brutally turned upside down Analysis By James Gallagher, health editor, BBC Newwebsite This is the bitter price of the new medicines we take for granted. Testing such experimental drugs, at the cutting edge of science, can never be completely risk-free. The safety and effectiveness of these drugs are rigorously tested in animals. The risks are low but there must still be a leap of faith when they are tried in people for the first time. This trial has been taking place since July without such major events being reported. Generally in Phase I trials the dose is increased slowly over time, which could be why the side-effects are appearing now. The hospitalised men started taking the drug regularly on 7 January and began showing severe side-effects three days later. Three of the volunteers are now facing a lifetime of disability in this accident of exceptional gravity. It is a high price to pay, but thousands of people do safely take part in similar trials each year. The trial was conducted by Biotrial, a French-based company with an international reputation which has carried out thousands of trials since it was set up in 1989. In a message on its website, the company said that serious adverse events related to the test drug had occurred. The company insisted that international regulations and Biotrial procedures were followed at every stage According to the health ministry, the adverse effects occurred on Thursday.";
}

@end