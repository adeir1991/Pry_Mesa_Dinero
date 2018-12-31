// Open popup
window.addEventListener('DOMContentLoaded', () => {
	try {
		document.querySelector('#open_popup').addEventListener('click', () => {
			document.querySelector('.popup-container').classList.remove('hidden');
		});
	} catch (error) {
		//
	}
	try {
		document.querySelector('#open_popup_bank_popup').addEventListener('click', () => {
			document.querySelector('.bank-popup').classList.remove('hidden');
		});
	} catch (error) {
		//
	}
});
