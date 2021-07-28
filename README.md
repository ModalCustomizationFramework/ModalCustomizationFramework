# Modal Customization

Modal Customization é um framework desenvolvido em Objective-C que tem como objetivo facilitar a implementação de modais de tamanhos customizados. 

## Features
- Definir tamanho da modal com base em tamanhos pré-definidos;
- Definir se é expansiva ou não; 
- Definir o estilo do blur apresentado atrás da modal (light mode ou dark mode);


## Como Integrar o framework ao projeto?

Para acessar o framework por meio do SPM, lá no Xcode em File -> Swift Packages -> Add Package Dependency,
adicione o link (https://github.com/ModalCustomizationFramework/ModalCustomizationSPM.git) na barra de pesquisa e aperte em **next**,
selecione **Branch** e aperte em **next**

## Como utilizar?

1. Faça o download do [projeto de exemplo](https://github.com/ModalCustomizationFramework/Example)
2. Navegue até o arquivo nomeado **TriggerButtonViewController.m**
3. Importe o framework
~~~objective-c
#import <ModalCustomizationFramework/ModalCustomizationFramework.h>
~~~
4. Vamos fazer modificações na seguinte função 
~~~objective-c
 - (void)buttonAction {}
~~~
5. Instancie a classe **ModalCustomization** para ter acesso aos métodos que irão customizar a modal
~~~objective-c
 ModalCustomization *modalCustomization = ModalCustomization.new;
~~~

6. Faça as customizações, se não usar as funções, valores padrões serão colocados. 
~~~objective-c
    // Escolher entre lightMode e darkMode / valor padrão: lightMode
    [modalCustomization setBlurStyle:lightMode];
    
    // Escolher entre ModalScaleStateShort e ModalScaleStateNormal / valor padrão : ModalScaleStateNormal
    [modalCustomization setModalScaleState:ModalScaleStateShort];
    
    // Definir se a modal expande quando o usuário arrasta para cima ou se permanece com a mesma altura / valor padrão : NO
    [modalCustomization setIsModalExpansive:YES];
~~~
7. Instancie a classe ModalTransitioningDelegate atribuindo o objeto retornado para o **modalTransitioningDelegate** da controller
~~~objective-c
    self.modalTransitioningDelegate = [[ModalTransitioningDelegate alloc] initWithViewController:self
                                                                          presentingViewController: navigationController];
~~~

8. A ViewController da modal que será apresentada está contida em uma Navigation Controller
~~~objective-c
    navigationController.modalPresentationStyle = UIModalPresentationCustom;
    navigationController.transitioningDelegate = self.modalTransitioningDelegate;
    [self presentViewController:navigationController animated:YES completion:nil];
~~~

    
    
