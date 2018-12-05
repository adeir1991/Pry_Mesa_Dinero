// Will make custom checkbox cheked and unchecked.
window.addEventListener('DOMContentLoaded', () => {
	document.querySelectorAll('custom-checkbox').forEach(chbx => {
		const content = chbx.querySelector('.custom-checkbox-content');
		content.addEventListener('click', () => {
			content.classList.toggle('active');
			content.classList.toggle('inactive');
		});
	});
});