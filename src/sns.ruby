----------------------------------------------------------------------------------------------------------------------------------------------
Exemplo em ruby do ChatGPT

01-
require 'aws-sdk-sns' # carrega o SDK do AWS

# configura as credenciais de acesso
client = Aws::SNS::Client.new(
  access_key_id: 'YOUR_ACCESS_KEY',
  secret_access_key: 'YOUR_SECRET_KEY',
  region: 'YOUR_REGION'
)

# configura os parâmetros da mensagem
message = {
  phone_number: '+1234567890', # número de telefone para o qual enviar a mensagem
  message: 'Hello, this is a test message.' # conteúdo da mensagem
}

# envia a mensagem
response = client.publish(
  message: message[:message],
  phone_number: message[:phone_number]
)

# exibe o ID da mensagem enviada
puts response.message_id

obs:Observe que é necessário configurar as credenciais de acesso corretas e a região da sua conta do SNS. Além disso, para que você possa enviar
 mensagens de texto, você precisará de um número de telefone verificado no SNS.

----------------------------------------------------------------------------------------------------------------------------------------------
02-
require 'aws-sdk-sns'

# configura as credenciais de acesso
sns = Aws::SNS::Client.new(
  access_key_id: 'YOUR_ACCESS_KEY',
  secret_access_key: 'YOUR_SECRET_KEY',
  region: 'YOUR_REGION'
)

# define o número de telefone e a mensagem
phone_number = "+1234567890"
message = "Hello, this is a test message."

# envia a mensagem
response = sns.publish(
  phone_number: phone_number,
  message: message
)

# imprime o ID da mensagem enviada
puts response.message_id

------------------------------------------------------------------------------------------------------------------------------------------------

para diversos numeros:
03-

require 'aws-sdk-sns'

# configura as credenciais de acesso
sns = Aws::SNS::Client.new(
  access_key_id: 'YOUR_ACCESS_KEY',
  secret_access_key: 'YOUR_SECRET_KEY',
  region: 'YOUR_REGION'
)

# define a mensagem
message = "Hello, this is a test message."

# define uma lista de números de telefone
phone_numbers = ["+1234567890", "+0987654321", "+1111111111"]

phone_numbers.each do |phone_number|
  # envia a mensagem para cada número de telefone
  response = sns.publish(
    phone_number: phone_number,
    message: message
  )
  # imprime o ID da mensagem enviada
  puts "Message sent to #{phone_number}, message ID: #{response.message_id}"
end

obs:Neste exemplo, criei uma lista de números de telefone (phone_numbers) e, usando o método each, enviei a mensagem para cada número de telefone. 
Eu também imprimi o ID da mensagem enviada junto com o número de telefone para o qual a mensagem foi enviada.

Lembre-se de que você precisará de números de telefone verificados no SNS para poder enviar mensagens de texto. Além disso, 
é importante lembrar que essa operação pode ser custosa dependendo da quantidade de números que você deseja enviar, então é importante verificar
os custos e limites do SNS antes de enviar mensagens em massa.