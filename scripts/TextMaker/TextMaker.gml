function TextMaker(tx_x,tx_y,tx_layer,tx_text){
if (!instance_exists(text_object)) { // Ensure only one text_object exists
	with (instance_create_layer(tx_x, tx_y, tx_layer, text_object)) {
		// Set the text and calculate its length
		text = tx_text
		length = string_length(text);
		}
	}
}