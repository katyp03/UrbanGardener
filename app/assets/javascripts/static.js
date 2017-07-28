document.addEventListener("turbolinks:load", function(){
	const elMyPlantsLink = document.querySelector('.myPlantsLink');
	const elMyPostsLink = document.querySelector('.myPostsLink');
	const elMyRecipesLink = document.querySelector('.myRecipesLink');
	if(elMyPlantsLink) {
		elMyPlantsLink.addEventListener("click", function(){
			document.querySelectorAll(".hidePlants").forEach(element => element.style.display="block");
			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
			document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="none");
		});
	};
	// const elMyPostsLink = document.querySelector('.myPostsLink');
	if(elMyPostsLink) {
		elMyPostsLink.addEventListener("click", function(){
			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="block");
			document.querySelectorAll(".hidePlants").forEach(element => element.style.display="none");
			document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="none");
		});
	};
	// const elMyRecipesLink = document.querySelector('.myRecipesLink');
	if(elMyRecipesLink) {
		elMyRecipesLink.addEventListener("click", function(){
			document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="block");
			document.querySelectorAll(".hidePlants").forEach(element => element.style.display="none");
			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
		});
	};
})