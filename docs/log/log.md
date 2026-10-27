# Log

## Log Index
32. 2026-10-27 GitHub Pages 배포 (빈틈·AutoBlog 가독성·FIG 정렬)
31. 2026-10-27 빈틈도구·AutoBlog 본문 가독성 개선 및 FIG 번호 정렬
30. 2026-10-27 경력 타임라인 회사·개인 분리 및 개인 프로젝트 최신순 정렬
29. 2026-10-27 프로젝트 제목 프로젝트명·부제 분리 전체 적용
28. 2026-10-25 AutoBlog Studio 제목·배포 표기 수정
27. 2026-10-25 Part 03 project-head 2행 레이아웃
26. 2026-10-25 GitHub Pages 배포 (Part 03 통일·AutoBlog As-Built)
25. 2026-10-25 Part 03 impact·메타·Stack 통일
24. 2026-10-25 AutoBlog Studio 카드 As-Built 정합
23. 2026-10-25 docs/add 요약방식정의.md 표준 체크리스트 작성
22. 2026-10-25 GitHub Pages 배포 (빈틈 본문 가독성)
21. 2026-10-25 빈틈도구 본문 비개발자 가독성 보강
20. 2026-10-25 빈틈도구 2차 축약 (소개·본문·FIG)
19. 2026-10-25 GitHub Pages 배포 (ToolSite_v2·S/M/L)
18. 2026-10-25 빈틈도구 소개 S/M/L 풀이 추가
17. 2026-10-25 빈틈도구 impact-strip 순서 정렬
16. 2026-10-25 빈틈도구 섹션 ToolSite_v2 개편
15. 2026-10-25 GitHub Pages 푸시 배포 (impact-strip 3칸)
14. 2026-10-25 Part 03 impact-strip 3칸 통일
13. 2026-10-25 GitHub Pages 푸시 배포 (빈틈·AutoBlog)
12. 2026-10-25 Part 03 AutoBlog Studio 카드 추가
11. 2026-10-25 빈틈도구 AgenticWorkflow 정본 정합·port 제거
10. 2026-10-25 빈틈도구 FIG·본문 정합 (BINTEUM 제거, S/M/L)
9. 2026-10-25 빈틈도구 명칭·FIG·Workers 배포 사실 반영
8. 2026-10-25 BINTEUM 카드 축약·Live·지속 확장 표기
7. 2026-10-25 Part 03 빈틈(BINTEUM) 프로젝트 카드 추가
6. 2026-10-21 LG U+ 요약 줄바꿈 및 SQL LLM FIG.02 추가
5. 2026-10-21 LG U+ 프로젝트 상세 역할 반영
4. 2026-10-02 목차로 돌아가는 버튼 추가
3. 2026-10-02 포트폴리오 목차 추가
2. 2026-10-02 포트폴리오 LG U+ · ACC BI Report 내용 반영
1. 2026-09-13 GitHub Pages 배포 준비

## Log Body

32. 2026-10-27 GitHub Pages 배포 (빈틈·AutoBlog 가독성·FIG 정렬)
Purpose: 데브에서 확인한 빈틈도구·AutoBlog 본문 수정을 main에 반영
Changes:
- 커밋 6992be2를 origin/main에 푸시
- GitHub Actions Deploy GitHub Pages(40526368130) 성공
Changed files: docs/log/log.md

31. 2026-10-27 빈틈도구·AutoBlog 본문 가독성 개선 및 FIG 번호 정렬
Purpose: 부정형 나열·내부 용어를 비개발자 문장으로 바꾸고, AutoBlog에도 단계별 에이전트 흐름을 추가
Changes:
- 빈틈도구 시스템 설계: "없음" 나열 제거, 조회수·도구별 URL·공공데이터 주간 사전 반영을 풀어 쓰기, 배포 항목의 "서버 주간 배치" 오기 수정
- 빈틈도구 5가지 AI 역할을 하위 목록으로 분리
- AutoBlog: "허용 블록 10종"을 블록 단위 생성 설명으로 교체, 에이전틱 워크플로 5단계(ol) 블록 추가, 배포·검증 블록 정리
- FIG 번호를 문서 순서 01~08로 정렬 (중복 FIG.02 해소, 본문 참조 갱신), .resp-content ol 스타일 추가
Changed files: publish/index.html, publish/styles-v2.css

30. 2026-10-27 경력 타임라인 회사·개인 분리 및 개인 프로젝트 최신순 정렬
Purpose: 채용 담당자가 회사 프로젝트를 먼저 보게 하고, 개인 프로젝트도 최신순으로 맞춤
Changes:
- 경력 타임라인을 회사 프로젝트(위) / 개인 프로젝트(아래) 두 묶음으로 분리, 개인 묶음은 한 단계 낮은 글자 크기·색
- 강조 점은 진행 중인 항목(LG U+, 빈틈도구)에만 표시
- Part 03 카드 순서를 빈틈도구 → AutoBlog Studio → LUA로 변경
- LUA·빈틈도구 부제를 프로젝트 설명형으로 교체, impact 문구를 "AgenticWorkflow 구현"으로 축약
Changed files: publish/index.html, publish/styles-v2.css

29. 2026-10-27 프로젝트 제목 프로젝트명·부제 분리 전체 적용
Purpose: AutoBlog에 적용한 제목 형식(— 제거, 부제 축소)을 나머지 프로젝트 제목에도 맞춤
Changes:
- ACC BI Report, ACC BI Assistant, LUA, 빈틈도구 제목을 프로젝트명 + 작은 부제로 분리
- AutoBlog 배포 안내의 라벨 뒤 공백 정리
Changed files: publish/index.html

28. 2026-10-25 AutoBlog Studio 제목·배포 표기 수정
Purpose: 제목 줄바꿈 왜곡 완화 및 배포 안내 문구 정리
Changes:
- 프로젝트명과 부제 분리(— 제거), 부제 글자 크기 축소
- 배포 안내에서 AutoBlog.cmd · 제거
Changed files: publish/index.html, publish/styles-v2.css

27. 2026-10-25 Part 03 project-head 2행 레이아웃
Purpose: 개인 프로젝트만 제목+링크 1행·메타 전폭 2행으로 분리해 줄바꿈 왜곡 완화
Changes:
- publish/index.html LUA·빈틈·AutoBlog project-head-row 구조
- publish/styles-v2.css #personal 전용 flex·grid
Changed files: publish/index.html, publish/styles-v2.css

26. 2026-10-25 GitHub Pages 배포 (Part 03 통일·AutoBlog As-Built)
Purpose: origin/main 푸시로 GitHub Actions Pages 배포 트리거
Changes:
- commit ba66e99 → https://whatdothis.github.io/portfolio/
Changed files: (배포) publish/index.html

25. 2026-10-25 Part 03 impact·메타·Stack 통일
Purpose: 3프로젝트 impact 1칸·부가설명 통일, 빈틈 17+ 도구, LUA·AutoBlog 메타·소개
Changes:
- publish/index.html LUA·빈틈·AutoBlog
Changed files: publish/index.html

24. 2026-10-25 AutoBlog Studio 카드 As-Built 정합
Purpose: AutoBlog.cmd·프로필/인덱스·LLM 가드레일·4블록·FIG·Stack 정본 반영
Changes:
- publish/index.html AutoBlog 카드·타임라인 메타
Changed files: publish/index.html

23. 2026-10-25 docs/add 요약방식정의.md 표준 체크리스트 작성
Purpose: 빈틈도구 반영 과정을 A→Z 검수 체크리스트·서술 레이어로 표준화
Changes:
- docs/add/요약방식정의.md 신규
Changed files: docs/add/요약방식정의.md

22. 2026-10-25 GitHub Pages 배포 (빈틈 본문 가독성)
Purpose: 2차 축약·본문 plain language 반영
Changes:
- commit 6927a50 push main
Changed files: (deploy only)

21. 2026-10-25 빈틈도구 본문 비개발자 가독성 보강
Purpose: resp-grid만 plain language, lib/shared/Edge 등 축약어 제거·의미 유지
Changes:
- 아키텍처·에이전틱·추적·배포 bullet 재작성
Changed files: publish/index.html

20. 2026-10-25 빈틈도구 2차 축약 (소 intro·본문·FIG)
Purpose: 중복 제거, 소개≤320자, 표 삭제, FIG 캡션·라벨 축약
Changes:
- project-summary·resp-grid·FIG.05·06 텍스트
Changed files: publish/index.html

19. 2026-10-25 GitHub Pages 배포 (ToolSite_v2·S/M/L)
Purpose: 빈틈도구 v2 개편·impact-strip·S/M/L 풀이 반영
Changes:
- commit 376f397 push main
Changed files: (deploy only)

18. 2026-10-25 빈틈도구 소개 S/M/L 풀이 추가
Purpose: 소개글 S/M/L 최초 등장에 작은 수정/기능 단위/다면 변경 병기
Changes:
- project-summary 한 줄
Changed files: publish/index.html

17. 2026-10-25 빈틈도구 impact-strip 순서 정렬
Purpose: LUA·AutoBlog와 동일하게 AI·에이전트 → 규모(URL) → 검증(테스트) 순
Changes:
- 1인 · 24+ · 326 순서
Changed files: publish/index.html

16. 2026-10-25 빈틈도구 섹션 ToolSite_v2 개편
Purpose: docs/add/ToolSite_v2.md — 소개 축약, 4→3+추적 블록, FIG.05·06·Stack
Changes:
- 24+/326/1인 지표, 기획→구현 표·3줄 예시, Tailwind·Lighthouse/CDP 제거
Changed files: publish/index.html

15. 2026-10-25 GitHub Pages 푸시 배포 (impact-strip 3칸)
Purpose: Part 03 impact-strip 3칸 변경 Pages 반영
Changes:
- commit 7d4b99b push main
Changed files: (deploy only)

14. 2026-10-25 Part 03 impact-strip 3칸 통일
Purpose: LUA·빈틈·AutoBlog 소개 지표 3 cell, CSS grid 3열, AutoBlog 요약·LLM 줄바꿈
Changes:
- impact-strip repeat(3), 페이지 수·AI 우선 순서
Changed files: publish/index.html, publish/styles-v2.css

13. 2026-10-25 GitHub Pages 푸시 배포 (빈틈·AutoBlog)
Purpose: Part 03 빈틈도구·AutoBlog Studio 변경사항 origin/main 푸시 및 Pages 배포
Changes:
- commit 430c125 push main
Changed files: (deploy only)

12. 2026-10-25 Part 03 AutoBlog Studio 카드 추가
Purpose: AutoBlog.md 기준 프로토타입·Portable ZIP·FIG.07·08·방법론 5번째 카드·서브 프로젝트 3
Changes:
- 빈틈 아래 AutoBlog 카드, 타임라인, stats 3, 민감정보 일반화 표현
Changed files: publish/index.html

11. 2026-10-25 빈틈도구 AgenticWorkflow 정본 정합·port 제거
Purpose: docs/add/ToolSite_AgenticWorkflow.md 기준으로 소개·본문·FIG.05·06 동기화, 공개 문구에서 port 제거
Changes:
- S/M/L·S0·path 6단계·시간 순·게이트 표와 일치, publish · log · Rules · Skills
Changed files: publish/index.html

10. 2026-10-25 빈틈도구 FIG·본문 정합 (BINTEUM 제거, S/M/L)
Purpose: 명칭 정정, FIG.05·06 S축·역할/시간 순·lint·test·build 통일, ToolSite 보완
Changes:
- BINTEUM 제거, resp-grid 4블록 보강, FIG.06 S·M·L·시간순 박스
Changed files: publish/index.html

9. 2026-10-25 빈틈도구 명칭·FIG·Workers 배포 사실 반영
Purpose: binteumtool.com Live, FIG.06 as-built 정합, Preview 오기 수정
Changes:
- 빈틈→빈틈도구, Workers·Rate Limit·S/M/L 워크플로, FIG.05·06 갱신
Changed files: publish/index.html

8. 2026-10-25 BINTEUM 카드 축약·Live·지속 확장 표기
Purpose: 에이전트 중심으로 카피 축약, Live 링크 추가, 진행중→지속 확장
Changes:
- 요약·resp-grid·impact-strip 간소화, project-links Live binteum.com
Changed files: publish/index.html

7. 2026-10-25 Part 03 빈틈(BINTEUM) 프로젝트 카드 추가
Purpose: ToolSite.md 스펙에 따라 개인 프로젝트 섹션에 BINTEUM 카드·타임라인·stats 반영
Changes:
- #personal LUA 하단 BINTEUM 카드, FIG.05·FIG.06, experience·stats-bar·part-desc 수정
Changed files: publish/index.html

6. 2026-10-21 LG U+ 요약 줄바꿈 및 SQL LLM FIG.02 추가
Purpose: Target/Campaign 요약 가독성 개선 및 Campaign SQL LLM PoC 아키텍처 시각화
Changes:
- project-summary Target·Campaign 문단 분리
- FIG.02 SQL 생성 LLM 파이프라인 다이어그램 및 PoC 설명 보강
Changed files: publish/index.html, publish/styles-v2.css

5. 2026-10-21 LG U+ 프로젝트 상세 역할 반영
Purpose: LG U+ Adobe Target/Campaign 최근 프로젝트 내용을 포트폴리오에 반영하고 채용담당자 가독성에 맞게 재구성
Changes:
- Experience 타임라인·프로젝트 헤더 메타(단독 담당·PL) 갱신
- 요약·resp-grid 5블록(설계·데이터·협업·Campaign 부가) 및 Target 중심 FIG.01 다이어그램
- Stack 태그(AEP Web SDK, SQL 등) 정리
Changed files: publish/index.html

4. 2026-10-02 목차로 돌아가는 버튼 추가
Purpose: 섹션으로 이동한 뒤 목차로 바로 돌아올 수 있게 함
Changes:
- 목차를 지나 스크롤하면 우측 하단에 ↑ 목차 버튼 표시
- 버튼 선택 시 목차 위치로 스크롤
Changed files: publish/index.html, publish/styles-v2.css, update/26_10_02/포트폴리오.html, update/26_10_02/styles-v2.css

3. 2026-10-02 포트폴리오 목차 추가
Purpose: 소개 다음에 목차를 두고 섹션으로 바로 이동할 수 있게 함
Changes:
- 소개 아래 목차 9개 항목 추가
- 항목 선택 시 같은 페이지 해당 섹션으로 스크롤
Changed files: publish/index.html, publish/styles-v2.css, update/26_10_02/포트폴리오.html, update/26_10_02/styles-v2.css

2. 2026-10-02 포트폴리오 LG U+ · ACC BI Report 내용 반영
Purpose: update/26_10_02 제작본을 배포 페이지에 반영하고, LG U+ 역할 범위와 ACC BI Report 상태를 수정
Changes:
- Adobe Target 소개 문구를 SDK·공통스크립트 삽입 설계, 개인화 기반 분석·정의, API 파이프라인·페이로드, 트리거/노출 컴포넌트로 교체
- SQL 생성 LLM과 Fatigue 제어를 Adobe Campaign 구축의 파트로 재배치하고 FIG.01에서 Fatigue를 제거
- ACC BI Report를 진행보류로 변경하고 상용화(QA·UI/UX·쿼리 고도화) 진행 여부 미정을 명시
Changed files: update/26_10_02/포트폴리오.html, update/26_10_02/styles-v2.css, publish/index.html, publish/styles-v2.css, publish/README.md

1. 2026-09-13 GitHub Pages 배포 준비
Purpose: 포트폴리오를 GitHub Pages로 공개 배포해 사람인·잡코리아 URL 등록용 URL 확보
Changes:
- Git 저장소 초기화 및 초기 커밋
- GitHub Actions Pages workflow 추가 (`.github/workflows/pages.yml`)
- `publish/index.html`을 메인 진입점으로 설정
- `scripts/deploy-github-pages.ps1` 배포 스크립트 추가
Changed files: `.github/workflows/pages.yml`, `.gitignore`, `publish/index.html`, `scripts/deploy-github-pages.ps1`
