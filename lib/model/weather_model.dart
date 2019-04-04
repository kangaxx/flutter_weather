class WeatherModel {
  List<WeatherInfo> HeWeather;

  static WeatherModel fromMap(Map<String, dynamic> map) {
    WeatherModel weather = new WeatherModel();
    weather.HeWeather = WeatherInfo.fromMapList(map['HeWeather']);
    return weather;
  }

  static List<WeatherModel> fromMapList(dynamic mapList) {
    List<WeatherModel> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class WeatherInfo {
  String status;
  String msg;
  AqiBean aqi;
  BasicBean basic;
  NowBean now;
  SuggestionBean suggestion;
  UpdateBean update;
  List<Daily_forecastListBean> daily_forecast;

  static WeatherInfo fromMap(Map<String, dynamic> map) {
    WeatherInfo heWeatherListBean = new WeatherInfo();
    heWeatherListBean.status = map['status'];
    heWeatherListBean.msg = map['msg'];
    heWeatherListBean.aqi = AqiBean.fromMap(map['aqi']);
    heWeatherListBean.basic = BasicBean.fromMap(map['basic']);
    heWeatherListBean.now = NowBean.fromMap(map['now']);
    heWeatherListBean.suggestion = SuggestionBean.fromMap(map['suggestion']);
    heWeatherListBean.update = UpdateBean.fromMap(map['update']);
    heWeatherListBean.daily_forecast = Daily_forecastListBean.fromMapList(map['daily_forecast']);
    return heWeatherListBean;
  }

  static List<WeatherInfo> fromMapList(dynamic mapList) {
    List<WeatherInfo> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class AqiBean {
  CityBean city;

  static AqiBean fromMap(Map<String, dynamic> map) {
    AqiBean aqiBean = new AqiBean();
    aqiBean.city = CityBean.fromMap(map['city']);
    return aqiBean;
  }

  static List<AqiBean> fromMapList(dynamic mapList) {
    List<AqiBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class BasicBean {
  String cid;
  String location;
  String parent_city;
  String admin_area;
  String cnty;
  String lat;
  String lon;
  String tz;
  String city;
  String id;
  UpdateBean update;

  static BasicBean fromMap(Map<String, dynamic> map) {
    BasicBean basicBean = new BasicBean();
    basicBean.cid = map['cid'];
    basicBean.location = map['location'];
    basicBean.parent_city = map['parent_city'];
    basicBean.admin_area = map['admin_area'];
    basicBean.cnty = map['cnty'];
    basicBean.lat = map['lat'];
    basicBean.lon = map['lon'];
    basicBean.tz = map['tz'];
    basicBean.city = map['city'];
    basicBean.id = map['id'];
    basicBean.update = UpdateBean.fromMap(map['update']);
    return basicBean;
  }

  static List<BasicBean> fromMapList(dynamic mapList) {
    List<BasicBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class NowBean {
  String cloud;
  String cond_code;
  String cond_txt;
  String fl;
  String hum;
  String pcpn;
  String pres;
  String tmp;
  String vis;
  String wind_deg;
  String wind_dir;
  String wind_sc;
  String wind_spd;
  CondBean cond;

  static NowBean fromMap(Map<String, dynamic> map) {
    NowBean nowBean = new NowBean();
    nowBean.cloud = map['cloud'];
    nowBean.cond_code = map['cond_code'];
    nowBean.cond_txt = map['cond_txt'];
    nowBean.fl = map['fl'];
    nowBean.hum = map['hum'];
    nowBean.pcpn = map['pcpn'];
    nowBean.pres = map['pres'];
    nowBean.tmp = map['tmp'];
    nowBean.vis = map['vis'];
    nowBean.wind_deg = map['wind_deg'];
    nowBean.wind_dir = map['wind_dir'];
    nowBean.wind_sc = map['wind_sc'];
    nowBean.wind_spd = map['wind_spd'];
    nowBean.cond = CondBean.fromMap(map['cond']);
    return nowBean;
  }

  static List<NowBean> fromMapList(dynamic mapList) {
    List<NowBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class SuggestionBean {
  ComfBean comf;
  CwBean cw;
  SportBean sport;

  static SuggestionBean fromMap(Map<String, dynamic> map) {
    SuggestionBean suggestionBean = new SuggestionBean();
    suggestionBean.comf = ComfBean.fromMap(map['comf']);
    suggestionBean.cw = CwBean.fromMap(map['cw']);
    suggestionBean.sport = SportBean.fromMap(map['sport']);
    return suggestionBean;
  }

  static List<SuggestionBean> fromMapList(dynamic mapList) {
    List<SuggestionBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class UpdateBean {
  String loc;
  String utc;

  static UpdateBean fromMap(Map<String, dynamic> map) {
    UpdateBean updateBean = new UpdateBean();
    updateBean.loc = map['loc'];
    updateBean.utc = map['utc'];
    return updateBean;
  }

  static List<UpdateBean> fromMapList(dynamic mapList) {
    List<UpdateBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class Daily_forecastListBean {
  String date;
  CondBean cond;
  TmpBean tmp;

  static Daily_forecastListBean fromMap(Map<String, dynamic> map) {
    Daily_forecastListBean daily_forecastListBean = new Daily_forecastListBean();
    daily_forecastListBean.date = map['date'];
    daily_forecastListBean.cond = CondBean.fromMap(map['cond']);
    daily_forecastListBean.tmp = TmpBean.fromMap(map['tmp']);
    return daily_forecastListBean;
  }

  static List<Daily_forecastListBean> fromMapList(dynamic mapList) {
    List<Daily_forecastListBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class CityBean {
  String aqi;
  String pm25;
  String qlty;

  static CityBean fromMap(Map<String, dynamic> map) {
    CityBean cityBean = new CityBean();
    cityBean.aqi = map['aqi'];
    cityBean.pm25 = map['pm25'];
    cityBean.qlty = map['qlty'];
    return cityBean;
  }

  static List<CityBean> fromMapList(dynamic mapList) {
    List<CityBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class ComfBean {
  String type;
  String brf;
  String txt;

  static ComfBean fromMap(Map<String, dynamic> map) {
    ComfBean comfBean = new ComfBean();
    comfBean.type = map['type'];
    comfBean.brf = map['brf'];
    comfBean.txt = map['txt'];
    return comfBean;
  }

  static List<ComfBean> fromMapList(dynamic mapList) {
    List<ComfBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class CwBean {
  String type;
  String brf;
  String txt;

  static CwBean fromMap(Map<String, dynamic> map) {
    CwBean cwBean = new CwBean();
    cwBean.type = map['type'];
    cwBean.brf = map['brf'];
    cwBean.txt = map['txt'];
    return cwBean;
  }

  static List<CwBean> fromMapList(dynamic mapList) {
    List<CwBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class SportBean {
  String type;
  String brf;
  String txt;

  static SportBean fromMap(Map<String, dynamic> map) {
    SportBean sportBean = new SportBean();
    sportBean.type = map['type'];
    sportBean.brf = map['brf'];
    sportBean.txt = map['txt'];
    return sportBean;
  }

  static List<SportBean> fromMapList(dynamic mapList) {
    List<SportBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class CondBean {
  String txt_d;

  static CondBean fromMap(Map<String, dynamic> map) {
    CondBean condBean = new CondBean();
    condBean.txt_d = map['txt_d'];
    return condBean;
  }

  static List<CondBean> fromMapList(dynamic mapList) {
    List<CondBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class TmpBean {
  String max;
  String min;

  static TmpBean fromMap(Map<String, dynamic> map) {
    TmpBean tmpBean = new TmpBean();
    tmpBean.max = map['max'];
    tmpBean.min = map['min'];
    return tmpBean;
  }

  static List<TmpBean> fromMapList(dynamic mapList) {
    List<TmpBean> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}
