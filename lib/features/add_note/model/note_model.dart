class NoteModel {
  int? _id, _priority;
  String? _title, _description, _date;

  NoteModel(this._priority, this._title, this._description, this._date);
  NoteModel.withId(this._id);

  int? get id => _id;
  int? get priority => _priority;
  String? get title => _title;
  String? get description => _description;
  String? get date => _date;
}
