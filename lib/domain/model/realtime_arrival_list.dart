/// beginRow : null
/// endRow : null
/// curPage : null
/// pageRow : null
/// totalCount : 7
/// rowNum : 1
/// selectedCount : 5
/// subwayId : "1077"
/// subwayNm : null
/// updnLine : "상행"
/// trainLineNm : "강남행 - 강남방면"
/// subwayHeading : "오른쪽"
/// statnFid : "1077000688"
/// statnTid : "1077000687"
/// statnId : "1077000687"
/// statnNm : "강남"
/// trainCo : null
/// ordkey : "01000강남0"
/// subwayList : "1002,1077"
/// statnList : "1002000222,1077000687"
/// btrainSttus : null
/// barvlDt : "0"
/// btrainNo : "9"
/// bstatnId : "0"
/// bstatnNm : "강남"
/// recptnDt : "2022-01-04 13:37:08.0"
/// arvlMsg2 : "강남 도착"
/// arvlMsg3 : "강남"
/// arvlCd : "1"

class RealtimeArrivalList {
  RealtimeArrivalList({
      dynamic beginRow, 
      dynamic endRow, 
      dynamic curPage, 
      dynamic pageRow, 
      int? totalCount, 
      int? rowNum, 
      int? selectedCount, 
      String? subwayId, 
      dynamic subwayNm, 
      String? updnLine, 
      String? trainLineNm, 
      String? subwayHeading, 
      String? statnFid, 
      String? statnTid, 
      String? statnId, 
      String? statnNm, 
      dynamic trainCo, 
      String? ordkey, 
      String? subwayList, 
      String? statnList, 
      dynamic btrainSttus, 
      String? barvlDt, 
      String? btrainNo, 
      String? bstatnId, 
      String? bstatnNm, 
      String? recptnDt, 
      String? arvlMsg2, 
      String? arvlMsg3, 
      String? arvlCd,}){
    _beginRow = beginRow;
    _endRow = endRow;
    _curPage = curPage;
    _pageRow = pageRow;
    _totalCount = totalCount;
    _rowNum = rowNum;
    _selectedCount = selectedCount;
    _subwayId = subwayId;
    _subwayNm = subwayNm;
    _updnLine = updnLine;
    _trainLineNm = trainLineNm;
    _subwayHeading = subwayHeading;
    _statnFid = statnFid;
    _statnTid = statnTid;
    _statnId = statnId;
    _statnNm = statnNm;
    _trainCo = trainCo;
    _ordkey = ordkey;
    _subwayList = subwayList;
    _statnList = statnList;
    _btrainSttus = btrainSttus;
    _barvlDt = barvlDt;
    _btrainNo = btrainNo;
    _bstatnId = bstatnId;
    _bstatnNm = bstatnNm;
    _recptnDt = recptnDt;
    _arvlMsg2 = arvlMsg2;
    _arvlMsg3 = arvlMsg3;
    _arvlCd = arvlCd;
}

  RealtimeArrivalList.fromJson(dynamic json) {
    _beginRow = json['beginRow'];
    _endRow = json['endRow'];
    _curPage = json['curPage'];
    _pageRow = json['pageRow'];
    _totalCount = json['totalCount'];
    _rowNum = json['rowNum'];
    _selectedCount = json['selectedCount'];
    _subwayId = json['subwayId'];
    _subwayNm = json['subwayNm'];
    _updnLine = json['updnLine'];
    _trainLineNm = json['trainLineNm'];
    _subwayHeading = json['subwayHeading'];
    _statnFid = json['statnFid'];
    _statnTid = json['statnTid'];
    _statnId = json['statnId'];
    _statnNm = json['statnNm'];
    _trainCo = json['trainCo'];
    _ordkey = json['ordkey'];
    _subwayList = json['subwayList'];
    _statnList = json['statnList'];
    _btrainSttus = json['btrainSttus'];
    _barvlDt = json['barvlDt'];
    _btrainNo = json['btrainNo'];
    _bstatnId = json['bstatnId'];
    _bstatnNm = json['bstatnNm'];
    _recptnDt = json['recptnDt'];
    _arvlMsg2 = json['arvlMsg2'];
    _arvlMsg3 = json['arvlMsg3'];
    _arvlCd = json['arvlCd'];
  }
  dynamic _beginRow;
  dynamic _endRow;
  dynamic _curPage;
  dynamic _pageRow;
  int? _totalCount;
  int? _rowNum;
  int? _selectedCount;
  String? _subwayId;
  dynamic _subwayNm;
  String? _updnLine;
  String? _trainLineNm;
  String? _subwayHeading;
  String? _statnFid;
  String? _statnTid;
  String? _statnId;
  String? _statnNm;
  dynamic _trainCo;
  String? _ordkey;
  String? _subwayList;
  String? _statnList;
  dynamic _btrainSttus;
  String? _barvlDt;
  String? _btrainNo;
  String? _bstatnId;
  String? _bstatnNm;
  String? _recptnDt;
  String? _arvlMsg2;
  String? _arvlMsg3;
  String? _arvlCd;

  dynamic get beginRow => _beginRow;
  dynamic get endRow => _endRow;
  dynamic get curPage => _curPage;
  dynamic get pageRow => _pageRow;
  int? get totalCount => _totalCount;
  int? get rowNum => _rowNum;
  int? get selectedCount => _selectedCount;
  String? get subwayId => _subwayId;
  dynamic get subwayNm => _subwayNm;
  String? get updnLine => _updnLine;
  String? get trainLineNm => _trainLineNm;
  String? get subwayHeading => _subwayHeading;
  String? get statnFid => _statnFid;
  String? get statnTid => _statnTid;
  String? get statnId => _statnId;
  String? get statnNm => _statnNm;
  dynamic get trainCo => _trainCo;
  String? get ordkey => _ordkey;
  String? get subwayList => _subwayList;
  String? get statnList => _statnList;
  dynamic get btrainSttus => _btrainSttus;
  String? get barvlDt => _barvlDt;
  String? get btrainNo => _btrainNo;
  String? get bstatnId => _bstatnId;
  String? get bstatnNm => _bstatnNm;
  String? get recptnDt => _recptnDt;
  String? get arvlMsg2 => _arvlMsg2;
  String? get arvlMsg3 => _arvlMsg3;
  String? get arvlCd => _arvlCd;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['beginRow'] = _beginRow;
    map['endRow'] = _endRow;
    map['curPage'] = _curPage;
    map['pageRow'] = _pageRow;
    map['totalCount'] = _totalCount;
    map['rowNum'] = _rowNum;
    map['selectedCount'] = _selectedCount;
    map['subwayId'] = _subwayId;
    map['subwayNm'] = _subwayNm;
    map['updnLine'] = _updnLine;
    map['trainLineNm'] = _trainLineNm;
    map['subwayHeading'] = _subwayHeading;
    map['statnFid'] = _statnFid;
    map['statnTid'] = _statnTid;
    map['statnId'] = _statnId;
    map['statnNm'] = _statnNm;
    map['trainCo'] = _trainCo;
    map['ordkey'] = _ordkey;
    map['subwayList'] = _subwayList;
    map['statnList'] = _statnList;
    map['btrainSttus'] = _btrainSttus;
    map['barvlDt'] = _barvlDt;
    map['btrainNo'] = _btrainNo;
    map['bstatnId'] = _bstatnId;
    map['bstatnNm'] = _bstatnNm;
    map['recptnDt'] = _recptnDt;
    map['arvlMsg2'] = _arvlMsg2;
    map['arvlMsg3'] = _arvlMsg3;
    map['arvlCd'] = _arvlCd;
    return map;
  }

}