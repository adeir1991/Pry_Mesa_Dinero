// enables custom select box (exchanger select)
window.addEventListener('DOMContentLoaded', () => {
	const selectBoxes = document.querySelectorAll('exchanger-input');
	let selectedBox = null;
	const changeBox = (otherBox) => {
		const currency = otherBox.getAttribute('currency');
		const newCurrency = currency === 'DOL' ? 'PEN' : 'DOL';
		const flags = otherBox.querySelector('.flags');
		flags.querySelector('.flag').classList.remove(currency);
		flags.querySelector('.flag').classList.add(newCurrency);
		flags.querySelector('.currency').textContent = newCurrency;
		otherBox.setAttribute('currency', newCurrency);
	};
	const toggleItems = (otherBox) => {
		const items = otherBox.querySelectorAll('li');
		items.forEach(item => {
			item.classList.toggle('selected');
		});
	};
	selectBoxes.forEach(selectBox => {
		const arrow = selectBox.querySelector('.flags > .arrow');
		const items = selectBox.querySelectorAll('li');
		arrow.addEventListener('click', () => {
			selectBoxes.forEach(box => {
				box.classList.remove('show-dropdown');
			});	
			selectedBox = selectBox;
			selectBox.classList.toggle('show-dropdown');
		});
		items.forEach(item => {
			item.addEventListener('click', () => {
				if (!item.classList.contains('selected')) {
					items.forEach(oldItem => {
						oldItem.classList.remove('selected');
					});
					item.classList.add('selected');
					changeBox(selectBox);
					const otherId = selectBox.classList.contains('exch1') ? 'exch2' : 'exch1';
					const otherSelect = document.querySelector(`.${otherId}`);
					changeBox(otherSelect);
					// Alter list of other select
					toggleItems(otherSelect);
					// Changes placeholder of second input, only valid in home
					try {
						const text = document.querySelector('.combo2').querySelector('input.input').placeholder;
						document.querySelector('.combo2').querySelector('input.input').placeholder = (text === 'Soles' ? 'Dólares' : 'Soles');
					} catch (error) {
						//
					}
				}
			});
		})
	});
	document.addEventListener('click', event => {
		const target = event.target;
		if (!target.closest(".dropdown-menu, .flags > .arrow")) {
			try {
				if (selectedBox.classList.contains('show-dropdown')) {
					selectedBox.classList.remove('show-dropdown');
				}
			} catch (error) {
				//
			}
		}
	})
});