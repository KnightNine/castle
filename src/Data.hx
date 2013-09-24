enum ColumnType {
	TId;
	TString;
	TBool;
	TInt;
	TFloat;
	TEnum( values : Array<String> );
	TRef( sheet : String );
}

typedef Column = {
	var name : String;
	var type : ColumnType;
	var typeStr : String;
	var opt : Bool;
	var size : Null<Float>;
}

typedef SheetProps = {
	var displayColumn : Null<String>;
}

typedef Sheet = {
	var name : String;
	var columns : Array<Column>;
	var lines : Array<Dynamic>;
	var props : SheetProps;
}

typedef Data = {
	sheets : Array<Sheet>,
}
