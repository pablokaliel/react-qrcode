Enviar sms pela api AWS SNS:

- documentação: https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html

O Amazon SNS não tem custos iniciais. Você paga com base no número de mensagens publicadas, no número de notificações que você entrega e em quaisquer chamadas adicionais à API para gerenciar tópicos e assinaturas. Os preços de entrega variam de acordo com o tipo de endpoint. Você pode começar gratuitamente com o nível gratuito do Amazon SNS.

obs:Cada mensagem SMS pode conter até 140 bytes e a cota de caracteres depende do esquema de codificação. Por exemplo, uma mensagem SMS pode conter:

160 caracteres GSM
140 caracteres ASCII
70 caracteres UCS-2

Se você publicar uma mensagem que exceda a cota de tamanho, o Amazon SNS a enviará como várias mensagens, cada uma delas dentro da cota de tamanho. 
As mensagens não são cortadas no meio de uma palavra, mas nos limites da palavra inteira.

Passos:

1-Faça login no console do Amazon SNS.

2-No menu do console, escolha uma região da AWS compatível com mensagens SMS.

3-No painel de navegação, escolha Mensagens de texto (SMS).

4-Na página Mensagens de texto móveis (SMS) , escolha Publicar mensagem de texto.

5-Na página Publicar mensagem SMS , em Tipo de mensagem , escolha uma das seguintes opções:
promocional: mensagens não criticas como de marketing
transacional: que dão suporte às transações do cliente, como senhas e autenticação

O primeiro passo para começar a enviar msg você deve adicionar os numeros de telefone de destino e em seguida verifica-los

-------------------------------------------------------------------------------------------------------------------------------------------------------

https://docs.aws.amazon.com/pt_br/sdk-for-ruby/v3/developer-guide/sqs-example-send-and-receive-messages.html

https://docs.aws.amazon.com/pt_br/sdk-for-ruby/v3/developer-guide/setup-config.html

https://rubygems.org/gems/aws-sdk-sns?locale=pt-BR

https://docs.aws.amazon.com/pt_br/sns/latest/dg/sns-mobile-application-as-subscriber.html

https://github.com/aws/aws-sdk-rails

-------------------------------------------------------------------------------------------------------------------------------------------------------