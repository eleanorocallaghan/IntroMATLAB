%Create a pitch

sound = input('Please name a sound: ', 's');
production = input('Please name a means of production: ', 's');
noun = input('Please provide a noun: ', 's');
consumers = input('Please name a group of consumers: ', 's');
problem = input('Please name a problem: ', 's');
ingredient = input('Please name a secret ingredient: ', 's');
number = input('Finally, please provide a number: ');

fprintf('My company %s %s is developing a %s for %s to end %s \n using %s. We are hoping you will invest $%.2f to make this possible.\n', sound, production, noun, consumers, problem, ingredient, number)
