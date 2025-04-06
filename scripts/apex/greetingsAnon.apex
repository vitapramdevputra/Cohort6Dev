Greetings gr =  new Greetings();//create new instance if we want to use non-static members (variable or method)
gr.sayHello();

gr.sayHellooo('Diora');

string firstName = 'Sean';
gr.sayHellooo(firstName);

gr.sayHello2('Diora', 'AI');
gr.sayHello2('Sean', 'Salesforce');

gr.sayHello3(firstName, 25);//will this work?

integer a1 = 18;
gr.sayHello3('Diora', a1);//no. 