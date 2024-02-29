[https://www.figma.com/file/3n4p6q9TJkTX3HgGCqQIwu/infou?type=design&node-id=0%3A1&mode=design&t=P13PPPZJevavxQB1-1](https://www.figma.com/file/3n4p6q9TJkTX3HgGCqQIwu/infou?type=design&node-id=0%3A1&mode=design&t=P13PPPZJevavxQB1-1)

## 3. 회의 및 개발 일정

### 1차 회의

1. 기존 UI / UX 대폭 개선

2. 기준 기종
    - 안드로이드
    - PIXEL 6 API 33 → 1차 개발 완성 이후 media query 진행
3. 디자인
    1. ‘이 수업 어때?’ 로고
    2. 전체적 변환 말고 부분적 수정 필요
        1. 색상
        2. 컨셉 (현재는 중구 난방한 느낌)
            1. 가시성, 통일성, 둥글둥글한 느낌
4. 추가 기능
    1. 우리만의 강의평 제작 (배치는 미정)
    2. 로그인 기능 추가
    3. 카테고리 바 (홈, 마이 페이지)

### 2차 회의

공통

- [x]  깃허브에 플러터 레포지토리 INfoU 생성
- [x]  환경설정
- [x]  스크린 제작 착수
- [x]  커밋사항 보고

1. 정민
- [x]  ratingScreen
- [x]  noticeScreen
1. 성민
- [x]  homeScreen
- [x]  mypageScreen

### 3차 회의

- 세부 기능 정의 및 구현

**TODO LIST**

1. splashScreen 정민
    - ~~초기 로고 팝업~~
2. homeScreen 정민
    - 오늘의 공지사항
        - ~~ListView 구현~~
        - API 통신
    - 최근 강의평
3. noticeScreen 정민
    - 인하대학교 / SW중심대학 / 컴퓨터공학 별 공지사항
        - UI 구성
        - 버튼 별 API 통신 구현
        - 페이지 ListView 구현
        - 검색 자동완성 기능
4. ratingScreen 성민
    - 최근 강의평
        - ~~ListView 구현~~
        - API 통신 구현
    - 인기 강의평
        - 이용권 구매에 따른 blur 처리 구현
    - 검색 자동완성 기능
    - ratingScreenWrite ( 강의평 작성하기)
        - ListView 구현
        - 강의평 작성 API 통신 구현
5. pointScreen 
    - 미정
6. mypageScreen 성민
    - 내 정보
    - 포인트
    - 이용안내
7. 기타 Widget 
    1. ~~Bottom Naviator - 상위 다섯개의 페이지 카테고리 이동 하단 네비게이션 바~~
    2. 이용권 구매자 확인
