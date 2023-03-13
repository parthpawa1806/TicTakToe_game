class Jsonmodel {
  String? resource;
  String? owner;
  Code? code;
  int? severity;
  String? message;
  String? source;
  int? startLineNumber;
  int? startColumn;
  int? endLineNumber;
  int? endColumn;

  Jsonmodel(
      {this.resource,
      this.owner,
      this.code,
      this.severity,
      this.message,
      this.source,
      this.startLineNumber,
      this.startColumn,
      this.endLineNumber,
      this.endColumn});

  Jsonmodel.fromJson(Map<String, dynamic> json) {
    resource = json['resource'];
    owner = json['owner'];
    code = json['code'] != null ? new Code.fromJson(json['code']) : null;
    severity = json['severity'];
    message = json['message'];
    source = json['source'];
    startLineNumber = json['startLineNumber'];
    startColumn = json['startColumn'];
    endLineNumber = json['endLineNumber'];
    endColumn = json['endColumn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resource'] = this.resource;
    data['owner'] = this.owner;
    if (this.code != null) {
      data['code'] = this.code!.toJson();
    }
    data['severity'] = this.severity;
    data['message'] = this.message;
    data['source'] = this.source;
    data['startLineNumber'] = this.startLineNumber;
    data['startColumn'] = this.startColumn;
    data['endLineNumber'] = this.endLineNumber;
    data['endColumn'] = this.endColumn;
    return data;
  }
}

class Code {
  String? value;
  Target? target;

  Code({this.value, this.target});

  Code.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    target =
        json['target'] != null ? new Target.fromJson(json['target']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    if (this.target != null) {
      data['target'] = this.target!.toJson();
    }
    return data;
  }
}

class Target {
  int? mid;
  String? path;
  String? scheme;
  String? authority;

  Target({this.mid, this.path, this.scheme, this.authority});

  Target.fromJson(Map<String, dynamic> json) {
    mid = json['$mid'];
    path = json['path'];
    scheme = json['scheme'];
    authority = json['authority'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$mid'] = this.mid;
    data['path'] = this.path;
    data['scheme'] = this.scheme;
    data['authority'] = this.authority;
    return data;
  }
}