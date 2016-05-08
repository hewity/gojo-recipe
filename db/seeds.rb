instructions = Instruction.create([
{recipe_id:"1", ingredient_id:"", amount:"", measurement:""}
{recipe_id:"2", ingredient_id:"", amount:"", measurement:""}
{recipe_id:"3", ingredient_id:"", amount:"", measurement:""}
])

recipeboxs = Recipebox.create([
{title:"Simple salad", ingredient:"Tomato, onion, olive_oil, peper and salt", instruction:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus mollis interdum velit, quis venenatis urna. Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", cooking_time:"25", prep_time:"14"}

{title:"chcken grilled", ingredient:"olive_oil, peper and salt", instruction:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus mollis interdum velit, quis venenatis urna. Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", cooking_time:"25", prep_time:"14"}

{title:"Salmon", ingredient:"olive_oil,lemmon, peper and salt", instruction:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus mollis interdum velit, quis venenatis urna. Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", cooking_time:"25", prep_time:"14"}
])

users = User.create([
{email:"bob@example.com", username:"bob", password_digest:"something123"}
{email:"smith@example.com", username:"smith", password_digest:"any123"}
{email:"ruby@example.com", username:"ruby", password_digest:"usee123"}
])
