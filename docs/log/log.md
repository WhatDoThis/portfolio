# Log

## Log Index
2. 2026-10-02 포트폴리오 LG U+ · ACC BI Report 내용 반영
1. 2026-09-13 GitHub Pages 배포 준비

## Log Body

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
