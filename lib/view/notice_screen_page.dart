import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

const html_article_view = '''
<div class="artclView">
		
			
				<p style="text-align: left;"><span style="color: rgb(51, 51, 51); font-family: 굴림; font-size: 16px; background-color: rgb(255, 255, 255);">안녕하세요 학과사무실입니다.</span></p>
<p style="text-align: left;"><span style="color: rgb(51, 51, 51); font-family: 굴림; font-size: 16px; background-color: rgb(255, 255, 255);"><br></span></p>
<p style="text-align: left;"><span style="color: rgb(51, 51, 51); font-family: 굴림; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp;본교 입학처에서는 '2024년 고교교육 기여대학 지원사업'의 일환으로 고교생에게 학과안내 및 진로 멘토 역할을 수행할 전공멘토단을 운영하고자 합니다. 이에 컴퓨터공학과 학생들의 많은 관심과 참여 바랍니다.</span></p>
<p style="text-align: left;"><span style="color: rgb(51, 51, 51); font-family: 굴림; font-size: 16px; background-color: rgb(255, 255, 255);"><br></span></p>
<p style="margin-right: 0px; margin-left: 0px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">1. 전공멘토단 운영 개요</span></p>
<p style="margin-right: 0px; margin-left: 0px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">&nbsp;&nbsp;가. 활동시기 : 2024.04. ~ 2025.02.</span></p>
<p style="margin-right: 0px; margin-left: 0px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">&nbsp;&nbsp;나. 활동내용 :&nbsp;학교 및 전공소개, 학과 커리큘럼, 졸업 후 진로 등</span></p>
<p style="margin-right: 0px; margin-left: 0px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">&nbsp;&nbsp;다. 운영일정</span></p>
<table width="621" bordercolor="black" border="1" cellspacing="0" cellpadding="0" class="" style="font-family: Roboto, 'Noto Sans KR', sans-serif; font-size: 14px; color: rgb(51, 51, 51); border-collapse: collapse; border: currentcolor; width: 621px; background-color: rgb(255, 255, 255);">
<tbody>
<tr>
<td width="34" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 34px; background-color: rgb(192, 192, 192);">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-weight: 700; font-family: 굴림;">연번</span></p></td>
<td width="89" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 89px; background-color: rgb(192, 192, 192);">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-weight: 700; font-family: 굴림;">일정</span><br></p></td>
<td width="488" height="20" rowspan="1" colspan="2" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 488px; height: 20px; background-color: rgb(192, 192, 192);">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-weight: 700; font-family: 굴림;">내용</span></p></td>
</tr>
<tr>
<td width="34" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 34px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">1</span></p></td>
<td width="89" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 89px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">2024.03.06.</span></p>
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">~ 03.15.</span><br></p></td>
<td width="124" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 124px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">전공멘토단 구성</span><br></p></td>
<td width="361" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 361px;">
<p align="left" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">&nbsp;- 학과에 공문 발송하여 추천 요청</span></p></td>
</tr>
<tr>
<td width="34" height="20" rowspan="1" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 34px;">
<p style="text-align: center;"><span style="font-size: 11pt; font-family: 굴림;">2</span></p></td>
<td width="89" height="20" rowspan="1" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 89px;">
<p style="text-align: center;"><span style="font-size: 11pt; font-family: 굴림;">2024.03.19.</span></p></td>
<td width="124" height="20" rowspan="1" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 124px;">
<p style="text-align: center;"><span style="font-size: 11pt; font-family: 굴림;">전공멘토단 구성 결과</span><span style="font-size: 11pt; font-family: 굴림;">&nbsp;통보</span></p></td>
<td width="361" height="20" rowspan="1" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 361px;">
<p><span style="font-size: 11pt; font-family: 굴림;">&nbsp;- 확정된 멘토들에게 문자로 결과 통보</span></p></td>
</tr>
<tr>
<td width="34" height="20" style="font-family: 굴림체; border: 1px solid rgb(0, 0, 0); width: 34px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">3</span></p></td>
<td width="89" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 89px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">2024.04.01</span></p>
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">~ 04.07.</span><br></p></td>
<td width="124" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 124px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">OT 및 사전교육</span><br></p></td>
<td width="361" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 361px;">
<p align="left" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">&nbsp;- 전공 멘토단 활동내용 안내</span></p></td>
</tr>
<tr>
<td width="34" height="20" style="font-family: 굴림체; border: 1px solid rgb(0, 0, 0); width: 34px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">4</span></p></td>
<td width="89" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 89px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">2024.04.08.</span></p>
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">~ 04.19.</span><br></p></td>
<td width="124" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 124px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">전공 안내 PPT</span></p>
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">제출</span><br></p></td>
<td width="361" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 361px;">
<p align="left" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">&nbsp;- 학과별 전공안내 PPT제작</span></p>
<p align="left" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">&nbsp;※세부사항은 OT 및 사전교육 때 안내 예정</span><br></p></td>
</tr>
<tr>
<td width="34" height="20" style="font-family: 굴림체; border: 1px solid rgb(0, 0, 0); width: 34px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">5</span></p></td>
<td width="89" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 89px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">2024.04.</span></p>
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">~ 2025.02.</span><br></p></td>
<td width="124" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 124px; cursor: row-resize;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">전공멘토링 활동</span><br></p></td>
<td width="361" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 361px;">
<p align="left" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">&nbsp;- 고교 주관 전공탐색 프로그램에 멘토로 활동</span><br></p></td>
</tr>
<tr>
<td width="34" height="20" style="font-family: 굴림체; border: 1px solid rgb(0, 0, 0); width: 34px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">6</span></p></td>
<td width="89" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 89px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">2024.08.</span></p></td>
<td width="124" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 124px; cursor: row-resize;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">중간점검 회의</span><br></p></td>
<td width="361" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 361px;">
<p align="left" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">&nbsp;- 중간점검회의를 통해 활동에 대한 의견 공유</span></p></td>
</tr>
<tr>
<td width="34" height="20" style="font-family: 굴림체; border: 1px solid rgb(0, 0, 0); width: 34px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">7</span></p></td>
<td width="89" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 89px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">2025.01.</span><br></p></td>
<td width="124" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 124px;">
<p align="center" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">결과보고 회의</span><br></p></td>
<td width="361" height="20" style="font-family: 굴림체; font-size: 12pt; border: 1px solid rgb(0, 0, 0); width: 361px;">
<p align="left" style="margin-right: 0px; margin-left: 0px; font-size: 12pt; line-height: 24px;"><span style="font-size: 11pt; font-family: 굴림;">&nbsp;- 사례 공유</span></p></td>
</tr>
</tbody>
</table>
<p><span style="font-family: 굴림;"><br></span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">2. 선발&nbsp;기준</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">&nbsp;&nbsp;- 학과 이해도가 높고 발표능력이 우수하고 성실한 학생</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;(2학년 이상, 휴학생 불가)</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">&nbsp;&nbsp;- 학생부종합전형으로 입학한 학생 중심으로 우선 선발&nbsp;</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;"><br></span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">3.&nbsp;</span><span style="font-family: 굴림; font-size: 12pt;">활동특전 : 입학처장 명의&nbsp;활동확인서 발급, 멘토링 참여 횟수에 따른 멘토&nbsp;</span><span style="font-family: 굴림; font-size: 12pt;">활동비 지급</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;"><br></span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">4. 신청방법</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">&nbsp; -&nbsp;~2024.03.19.(화) 10:00 까지</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">&nbsp; -&nbsp;학과 사무실 <span style="font-weight: bold; font-family: 굴림;">nsy0317@inha.ac.kr</span>로 간단한 소개 후&nbsp;아래 첨부파일 작성하여 제출</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">&nbsp; &nbsp; (학과 내&nbsp;선발 완료 후 개별 연락 예정)</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;"><br></span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;"><br></span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;"><br></span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">문의사항 있으시면 032-860-7440으로 연락 바랍니다.</span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;"><br></span></p>
<p style="margin-right: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51); font-family: 굴림체; background-color: rgb(255, 255, 255); line-height: 24px;"><span style="font-family: 굴림; font-size: 12pt;">감사합니다.</span></p>
			
			
		
	</div>
''';

class notice_screen_page extends StatelessWidget {
  const notice_screen_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('공지사항 제목', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Container(
                width: 70,
                height: 26,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                padding: EdgeInsets.fromLTRB(10, 2, 0, 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                child: Text('대학원'),
              ),
              Center(
              child: HtmlWidget(html_article_view),
                ),
            ],
          )
            ),
      ),
    );
  }
}

