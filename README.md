
[![Language](https://img.shields.io/badge/language-Swift%205.0-skyblue.svg)](https://swift.org)
![UI](https://img.shields.io/badge/UI-SwiftUI-blue.svg)
![Xcode](https://img.shields.io/badge/Xcode-15.0.1-green)
![Version](https://img.shields.io/badge/Target-iOS_15.0-yellow)

# Info


⚠️[KOR] 

공공데이터(지하철역 정보) xml 데이터 파싱 프로젝트입니다. 

프로젝트 이름은 HTML이지만 XML 데이터 파싱 프로젝트 입니다

---

⚠️[ENG] 

This is a project for parsing XML using the subway station information API in Seoul, South Korea. 

The project name is HTML, but it's actually an XML data parsing project.



# Preview
<img src="https://github.com/ios-carki/SampleHTMLParsing/assets/44957712/c848321b-059a-4453-bedd-c8e8fbe29868" width="350" height="712"/>

### Request URL
```JSON
http://openapi.seoul.go.kr:8088/{API_Key}/xml/SearchSTNBySubwayLineInfo/1/5/ / /4호선
```
### Response
```XML
<?xml version="1.0" encoding="UTF-8"?>
<SearchSTNBySubwayLineInfo>
    <list_total_count>51</list_total_count>
    <RESULT>
        <CODE>INFO-000</CODE>
        <MESSAGE>정상 처리되었습니다</MESSAGE>
    </RESULT>
    <row>
        <STATION_CD>1456</STATION_CD>
        <STATION_NM>평촌</STATION_NM>
        <STATION_NM_ENG>Pyeongchon</STATION_NM_ENG>
        <LINE_NUM>04호선</LINE_NUM>
        <FR_CODE>441</FR_CODE>
        <STATION_NM_CHN>坪村</STATION_NM_CHN>
        <STATION_NM_JPN>ピョンチョン</STATION_NM_JPN>
    </row>
    <row>
        <STATION_CD>1759</STATION_CD>
        <STATION_NM>안산</STATION_NM>
        <STATION_NM_ENG>Ansan</STATION_NM_ENG>
        <LINE_NUM>04호선</LINE_NUM>
        <FR_CODE>453</FR_CODE>
        <STATION_NM_CHN>安山</STATION_NM_CHN>
        <STATION_NM_JPN>アンサン</STATION_NM_JPN>
    </row>
    <row>
        <STATION_CD>1760</STATION_CD>
        <STATION_NM>신길온천</STATION_NM>
        <STATION_NM_ENG>Neunggil</STATION_NM_ENG>
        <LINE_NUM>04호선</LINE_NUM>
        <FR_CODE>454</FR_CODE>
        <STATION_NM_CHN>新吉温泉</STATION_NM_CHN>
        <STATION_NM_JPN>シンギル・オンチョン</STATION_NM_JPN>
    </row>
    <row>
        <STATION_CD>1761</STATION_CD>
        <STATION_NM>정왕</STATION_NM>
        <STATION_NM_ENG>Jeongwang</STATION_NM_ENG>
        <LINE_NUM>04호선</LINE_NUM>
        <FR_CODE>455</FR_CODE>
        <STATION_NM_CHN>正往</STATION_NM_CHN>
        <STATION_NM_JPN>チョンワン</STATION_NM_JPN>
    </row>
    <row>
        <STATION_CD>1762</STATION_CD>
        <STATION_NM>오이도</STATION_NM>
        <STATION_NM_ENG>Oido</STATION_NM_ENG>
        <LINE_NUM>04호선</LINE_NUM>
        <FR_CODE>456</FR_CODE>
        <STATION_NM_CHN>乌耳岛</STATION_NM_CHN>
        <STATION_NM_JPN>オイド</STATION_NM_JPN>
    </row>
</SearchSTNBySubwayLineInfo>
```

### Using Package

https://github.com/Alamofire/Alamofire

https://github.com/drmohundro/SWXMLHash
