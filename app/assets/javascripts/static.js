// For profile page:
document.addEventListener("turbolinks:load", function(){
	const elMyPlantsLink = document.querySelector('.myPlantsLink');
	const elMyPostsLink = document.querySelector('.myPostsLink');
	const elMyRecipesLink = document.querySelector('.myRecipesLink');
	const elNewPostButton = document.querySelector('.newPostButton');
	const elEditPostButton = document.querySelectorAll('.editPostButton');
	if(elMyPlantsLink) {
		// render user plants page and hide user posts and recipes when nav link is clicked:
		elMyPlantsLink.addEventListener("click", function(){
			document.querySelectorAll(".hidePlants").forEach(element => element.style.display="block");
			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
			document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="none");
			document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="none");
			document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
		});
	};
	if(elMyPostsLink) {
		// render user posts page and hide user plants and recipes when nav link is clicked:
		elMyPostsLink.addEventListener("click", function(){
			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="block");
			document.querySelectorAll(".hidePlants").forEach(element => element.style.display="none");
			document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="none");
			document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="none");
			document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
		});
	};
	if(elMyRecipesLink) {
		// render user recipes page and hide user posts and plants when nav link is clicked:
		elMyRecipesLink.addEventListener("click", function(){
			document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="block");
			document.querySelectorAll(".hidePlants").forEach(element => element.style.display="none");
			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
			document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="none");
			document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
		});
	};
	if(elNewPostButton) {
		document.querySelectorAll('.hideNewPost').forEach(element => element.style.display="none");
		// render new post page and hide user recipes and plants, and userposts when nav link is clicked:
		elNewPostButton.addEventListener("click", function(){
			document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="block");
			document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="none");
			document.querySelectorAll(".hidePlants").forEach(element => element.style.display="none");
			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
			document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
		});
	};
	if(elEditPostButton) {
		document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
		// render new post page and hide user recipes and plants, and userposts when nav link is clicked:
		elEditPostButton.addEventListener("click", function(){
			document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="block");
			document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="none");
			document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="none");
			document.querySelectorAll(".hidePlants").forEach(element => element.style.display="none");
			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
		});
	};
})