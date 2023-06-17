CREATE TABLE palavras (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  conteudo TEXT,
  aplicacao1 VARCHAR(255),
  aplicacao2 VARCHAR(255),
  aplicacao3 VARCHAR(255),
  aplicacao4 VARCHAR(255),
  aplicacao5 VARCHAR(255)
);

INSERT INTO palavras (titulo, conteudo, aplicacao1, aplicacao2, aplicacao3, aplicacao4, aplicacao5)
VALUES 
(
'Burro', 
'Esse termo pode ser considerado ofensivo e pode gerar conflitos e mal-entendidos. No entanto, existem algumas expressões que podem ser usadas para se referir a alguém que você considera pouco inteligente ou pouco informado, sem ser ofensivo', 
'Pode ser que essa pessoa esteja enfrentando desafios cognitivos que impeça sua capacidade de compreender.',
'Parece que você não está conseguindo conectar as informações',
'Sua capacidade de compreensão do assunto é limitada', 
'Parece que você está tendo dificuldades em seguir o raciocínio', 
'Seu raciocínio é limitado'
),
(
'Ignorante', 
'Geralmente é considerado um insulto. Essas palavras são usadas para descrever alguém que é considerado estúpido, tolo, ou sem inteligência. O termo é considerado bastante ofensivo e pode ser usado para insultar alguém que a pessoa acredita estar agindo de forma ignorante, tola ou insensata. No entanto, é importante lembrar que usar esse tipo de linguagem ofensiva é prejudicial para as relações interpessoais e pode ser considerado desrespeitoso e inapropriado em muitas situações. É sempre importante tratar as pessoas com respeito e gentileza, mesmo quando se discorda de suas opiniões ou comportamentos.', 
'Me parece que você manifesta um certo atraso mental.', 
'Você revela uma extrema falta de saber.', 
'Você está se demonstrando um inepto.', 
'És um irracional, desprovido de razão e bom senso.', 
'Você possui um modo de se portar descortês.'
),
(
'Ladrão', 
'Quando alguém chama outra pessoa de ladrão, geralmente está se referindo a ela como um criminoso ou uma pessoa que comete crimes. Essa pessoa pode ser acusada de várias atividades ilegais, como roubo, furto, fraude, tráfico de drogas, violência e outras atividades criminosas. É uma acusação séria e pode ter implicações legais se houver provas suficientes para apoiar a acusação. Além disso, chamar alguém de bandido também pode ser interpretado como uma ofensa pessoal e pode afetar negativamente a reputação da pessoa acusada. Portanto, é importante ter cuidado ao fazer acusações desse tipo e garantir que haja evidências suficientes para apoiar tais acusações antes de fazer uma declaração pública.', 
'Aqueles indivíduos são ratos que surrupiam da despensa alheia.', 
'Você é um malfeitor que vive à margem da lei.', 
'Aquele indivíduo é um mau elemento que causa prejuízo à sociedade.', 
'Esse rapaz é um transgressor que comete atos ilícitos sem remorso.', 
'Aquele indivíduo é um biltre que vive à custa do trabalho alheio.'
),
(
'Mentiroso', 
'Geralmente significa que essa pessoa está sendo acusada de dizer algo falso de maneira intencional. É uma acusação de que essa pessoa não está sendo honesta e está tentando enganar os outros. A mentira pode ser definida como uma declaração falsa feita com a intenção de enganar. Isso significa que a pessoa está sendo acusada de ter feito uma declaração falsa com a intenção de enganar outra pessoa. Essa acusação pode ter consequências sérias, especialmente em casos em que a mentira é usada para obter benefícios indevidos ou causar danos a outras pessoas. No entanto, é importante lembrar que nem sempre uma acusação de mentira é justa e pode ser feita sem evidências sólidas.', 
'Isso que você acaba de dizer não condiz com a realidade.', 
'Desculpe, mas devo discordar do que você acabou de afirmar. Não parece ser exatamente preciso.', 
'Não estou certo se posso concordar com você, visto que há muitas evidências que apontam na direção oposta.', 
'Eu entendo que essa é sua opinião, mas os fatos mostram o contrário.', 
'Sinto muito, mas as informações que você apresentou não parecem ser precisas ou verificáveis.'
),
(
'Loroteiro', 
'Quando alguém chama outra pessoa de loroteiro, significa que essa pessoa é considerada mentirosa, que tem o hábito de contar histórias falsas ou exageradas com frequência. Um loroteiro é alguém que gosta de inventar ou exagerar histórias para chamar a atenção dos outros ou para impressioná-los de alguma forma. Essa palavra é usada para descrever indivíduos que não são confiáveis, que têm o hábito de exagerar ou distorcer a verdade de forma habitual, seja por vaidade, por insegurança ou por outras motivações. Em resumo, loroteiro é uma palavra usada para descrever alguém que mente frequentemente ou que tem o hábito de contar histórias falsas ou exageradas.', 
'Eu entendo seu ponto de vista, mas parece haver uma lacuna no seu argumento que ainda precisa ser preenchida para torná-lo mais convincente.', 
'Enquanto eu entendo sua perspectiva, eu sinto que há algumas suposições que precisam ser examinadas mais de perto antes de chegarmos a uma conclusão.', 
'Eu respeito sua opinião, mas há algumas informações adicionais que precisam ser consideradas antes que possamos ter uma compreensão mais completa do assunto.', 
'Eu aprecio a sua abordagem, mas ainda não estou convencido de que suas conclusões sejam as mais precisas. Talvez precisemos examinar mais informações para chegar a uma compreensão mais completa.'
),
(
'Tolo', 
'Esse termo pode ser considerado ofensivo e pode gerar conflitos e mal-entendidos. No entanto, existem algumas expressões que podem ser usadas para se referir a alguém que você considera pouco inteligente ou pouco informado, sem ser ofensivo', 
'Pode ser que essa pessoa esteja enfrentando desafios cognitivos que impeça sua capacidade de compreender.', 
'Parece que você não está conseguindo conectar as informações', 
'Sua capacidade de compreensão do assunto é limitada', 
'Parece que você está tendo dificuldades em seguir o raciocínio', 
'Seu raciocínio é limitado'
),
(
'Jumento', 
'Esse termo pode ser considerado ofensivo e pode gerar conflitos e mal-entendidos. No entanto, existem algumas expressões que podem ser usadas para se referir a alguém que você considera pouco inteligente ou pouco informado, sem ser ofensivo', 
'Pode ser que essa pessoa esteja enfrentando desafios cognitivos que impeça sua capacidade de compreender.', 
'Parece que você não está conseguindo conectar as informações', 
'Sua capacidade de compreensão do assunto é limitada', 
'Parece que você está tendo dificuldades em seguir o raciocínio', 
'Seu raciocínio é limitado'
),
(
'Jerico', 
'Esse termo pode ser considerado ofensivo e pode gerar conflitos e mal-entendidos. No entanto, existem algumas expressões que podem ser usadas para se referir a alguém que você considera pouco inteligente ou pouco informado, sem ser ofensivo', 
'Pode ser que essa pessoa esteja enfrentando desafios cognitivos que impeça sua capacidade de compreender.', 
'Parece que você não está conseguindo conectar as informações', 
'Sua capacidade de compreensão do assunto é limitada', 
'Parece que você está tendo dificuldades em seguir o raciocínio', 
'Seu raciocínio é limitado'
),
(
'Jegue', 
'Esse termo pode ser considerado ofensivo e pode gerar conflitos e mal-entendidos. No entanto, existem algumas expressões que podem ser usadas para se referir a alguém que você considera pouco inteligente ou pouco informado, sem ser ofensivo', 
'Pode ser que essa pessoa esteja enfrentando desafios cognitivos que impeça sua capacidade de compreender.', 
'Parece que você não está conseguindo conectar as informações', 
'Sua capacidade de compreensão do assunto é limitada', 
'Parece que você está tendo dificuldades em seguir o raciocínio', 
'Seu raciocínio é limitado'
),
(
'Imbecil', 
'Geralmente é considerado um insulto. Essas palavras são usadas para descrever alguém que é considerado estúpido, tolo, ou sem inteligência. O termo é considerado bastante ofensivo e pode ser usado para insultar alguém que a pessoa acredita estar agindo de forma ignorante, tola ou insensata. No entanto, é importante lembrar que usar esse tipo de linguagem ofensiva é prejudicial para as relações interpessoais e pode ser considerado desrespeitoso e inapropriado em muitas situações. É sempre importante tratar as pessoas com respeito e gentileza, mesmo quando se discorda de suas opiniões ou comportamentos.', 
'Me parece que você manifesta um certo atraso mental.', 
'Você revela uma extrema falta de saber.', 
'Você está se demonstrando um inepto.', 
'És um irracional, desprovido de razão e bom senso.', 
'Você possui um modo de se portar descortês.'
),
(
'Animal', 
'Geralmente é considerado um insulto. Essas palavras são usadas para descrever alguém que é considerado estúpido, tolo, ou sem inteligência. O termo é considerado bastante ofensivo e pode ser usado para insultar alguém que a pessoa acredita estar agindo de forma ignorante, tola ou insensata. No entanto, é importante lembrar que usar esse tipo de linguagem ofensiva é prejudicial para as relações interpessoais e pode ser considerado desrespeitoso e inapropriado em muitas situações. É sempre importante tratar as pessoas com respeito e gentileza, mesmo quando se discorda de suas opiniões ou comportamentos.', 
'Me parece que você manifesta um certo atraso mental.', 
'Você revela uma extrema falta de saber.', 
'Você está se demonstrando um inepto.', 
'És um irracional, desprovido de razão e bom senso.', 
'Você possui um modo de se portar descortês.'
),
(
'Idiota', 
'Geralmente é considerado um insulto. Essas palavras são usadas para descrever alguém que é considerado estúpido, tolo, ou sem inteligência. O termo é considerado bastante ofensivo e pode ser usado para insultar alguém que a pessoa acredita estar agindo de forma ignorante, tola ou insensata. No entanto, é importante lembrar que usar esse tipo de linguagem ofensiva é prejudicial para as relações interpessoais e pode ser considerado desrespeitoso e inapropriado em muitas situações. É sempre importante tratar as pessoas com respeito e gentileza, mesmo quando se discorda de suas opiniões ou comportamentos.', 
'Me parece que você manifesta um certo atraso mental.', 
'Você revela uma extrema falta de saber.', 
'Você está se demonstrando um inepto.', 
'És um irracional, desprovido de razão e bom senso.', 
'Você possui um modo de se portar descortês.'
),
(
'Besta', 
'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ', 
'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 
'There are many variations of passages of Lorem Ipsum available', 
'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium', 
'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium', 
'Lorem ipsum dolor sit amet'
),
(
'Cretino', 
'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. ', 
'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 
'There are many variations of passages of Lorem Ipsum available', 
'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium', 
'Ipsum quia dolor sit amet, consectetur, adipisci ', 
'Lorem ipsum dolor sit amet'
),
(
'Insolente', 
'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue;', 
'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 
'There are many variations of passages of Lorem Ipsum available', 
'Contrary to popular belief, Lorem Ipsum is not simply random text', 
'The standard chunk of Lorem Ipsum used since the 1500s', 
'Lorem ipsum dolor sit amet'
),
(
'Grosseiro', 
'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,', 
'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 
'There are many variations of passages of Lorem Ipsum available', 
'Contrary to popular belief, Lorem Ipsum is not simply random text', 
'The standard chunk of Lorem Ipsum used since the 1500s', 
'Lorem ipsum dolor sit amet'
),
(
'Trapaceiro', 
'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 
'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 
'There are many variations of passages of Lorem Ipsum available', 
'Contrary to popular belief, Lorem Ipsum is not simply random text', 
'The standard chunk of Lorem Ipsum used since the 1500s', 
'Lorem ipsum dolor sit amet'
),
(
'Ludibriador', 
'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.', 
'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 
'There are many variations of passages of Lorem Ipsum available', 
'Contrary to popular belief, Lorem Ipsum is not simply random text', 
'The standard chunk of Lorem Ipsum used since the 1500s', 
'Lorem ipsum dolor sit amet'
);
