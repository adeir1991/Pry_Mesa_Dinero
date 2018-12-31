window.addEventListener('DOMContentLoaded', () => {
	const removeForm = (newForm, removeFormButton) => {
		removeFormButton.addEventListener('click', () => {
			const forms = newForm.parentElement.querySelectorAll('.new-form').length;
			if (forms >= 2) {
				newForm.remove();
			}
		});
	};
	document.querySelectorAll("round-button").forEach(btn => {
		try {
			const parent = btn.parentElement.querySelector('.company-block-content');
			const content = parent.querySelector('div:first-child');
			const rB = content.querySelector('.remove-form');
			removeForm(content, rB);
			btn.addEventListener('click', () => {
				const newForm = content.cloneNode(true);
				newForm.className = 'new-form';
				const removeFormButton = document.createElement('div');
				removeFormButton.className = 'remove-form';
				newForm.appendChild(removeFormButton);
				removeForm(newForm, removeFormButton);
				parent.appendChild(newForm);
			});
		} catch (error) {
			// do nothing
		}
	});
});