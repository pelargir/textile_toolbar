function surround_selection(text_area, prefix, suffix) {
	text_area = $(text_area);
	if (document.selection) { //IE support
		text_area.focus();
		sel = document.selection.createRange();
		if (sel.text != "")
			sel.text = prefix + sel.text + suffix;
	} else if (text_area.selectionStart || text_area.selectionStart == '0') { //Mozilla/Firefox/Netscape 7+ support		
		var startPos = text_area.selectionStart;
		var endPos = text_area.selectionEnd;
		selected_text = text_area.value.substring(startPos, endPos);
		if (selected_text != "")
			text_area.value = text_area.value.substring(0, startPos) + prefix + selected_text + suffix +
										    text_area.value.substring(endPos, text_area.value.length);
	}
}

function insert_at_selection(text_area, value) {
	text_area = $(text_area);
	if (document.selection) { //IE support
		text_area.focus();
		document.selection.createRange().text = value;
	} else if (text_area.selectionStart || text_area.selectionStart == '0') { //Mozilla/Firefox/Netscape 7+ support		
		var startPos = text_area.selectionStart;
		var endPos = text_area.selectionEnd;
		text_area.value = text_area.value.substring(0, startPos) + value +
										  text_area.value.substring(endPos, text_area.value.length);
	}	
}

function insert_hyperlink(text_area) {
	url = prompt("Enter URL for hyperlink:", "http://");
	surround_selection(text_area, '"', '":' + url);
}

function insert_image(text_area) {
	url = prompt("Enter URL for image:", "http://");
	insert_at_selection(text_area, '!' + url + '!');
}