# Log

## Log Index
6. 2026-10-21 LG U+ 요약 줄바꿈 및 SQL LLM FIG.02 추가
5. 2026-10-21 LG U+ 프로젝트 상세 역할 반영
4. 2026-10-02 목차로 돌아가는 버튼 추가
3. 2026-10-02 포트폴리오 목차 추가
2. 2026-10-02 포트폴리오 LG U+ · ACC BI Report 내용 반영
1. 2026-09-13 GitHub Pages 배포 준비

## Log Body

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
