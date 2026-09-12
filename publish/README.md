# Handoff: 개발자 포트폴리오 (우해인)

## Overview

우해인(Backend · AI 풀스택 개발자)의 개인 포트폴리오 웹사이트. 이력서에 준하는 정형화된 단일 페이지 문서로, 채용담당자가 3~5분 내에 스캔 가능한 정보 밀도와 가독성을 목표로 합니다.

주요 콘텐츠:
- 상단 이력서 헤더 (이름, 역할, 요약, 연락처, 대표 지표 4개)
- 핵심 역량 3-card (Adobe 솔루션 / AI 시스템 설계 / 1인 풀스택)
- 경력 및 경험 타임라인 (LUA 포함 6개 프로젝트, 시작일 최근순)
- 기술 스택 표 (6개 카테고리 + AI Tools 강조 + 자격증)
- PART 01 Adobe 프로젝트 3종 (LG U+, 삼성전자 V7→V8, 에버랜드)
- PART 02 AI 자체 프로젝트 2종 (iBank BI Report, ACC BI Assistant)
- PART 03 개인 프로젝트 1종 (LUA Web)
- SVG 아키텍처 다이어그램 4종 (LG U+ SQL LLM, ACC RAG, LUA Phase + Agent Roles 등)
- 개발 방법론 (Cursor AI + 로드맵 + Phase 게이트 등 4가지)
- 교육 과정 프로젝트 (팀/개인 축약 카드)
- 연락처

## About the Design Files

이 번들에 포함된 파일은 **HTML로 제작된 디자인 레퍼런스**입니다. 실제 픽셀·컬러·타이포·인터랙션이 확정된 프로토타입이며, 그대로 복사해 쓸 프로덕션 코드가 아닙니다.

**작업의 목표는 이 HTML 디자인을 대상 코드베이스에 재구현**하는 것입니다:
- 기존 코드베이스가 있다면 그쪽의 확립된 패턴·라이브러리(React/Vue/Next.js 등)로 재작성
- 코드베이스가 없다면 **Next.js 14+ (App Router) + Tailwind CSS** 조합이 적합 — CSS custom properties 기반이라 이식이 자연스러움
- SVG 다이어그램 4종은 그대로 JSX 컴포넌트로 감싸 재사용 가능

원본 HTML을 바로 GitHub Pages · Vercel · Netlify 등 정적 호스팅에 올려 사용하는 것도 문제없이 동작합니다. 외부 의존성이 Google Fonts + React CDN + Babel CDN만 있어 자체 완결됩니다.

## Fidelity

**High-fidelity (hifi)**. 모든 값이 확정입니다:
- 컬러 팔레트 (Light/Dark 2종) — 모든 hex 값 명시
- 타이포 스케일 (Inter body + JetBrains Mono code)
- 스페이싱 · 라운딩 · 인쇄 최적화 모두 지정
- **카피(문장)까지 확정본. 임의 재작성 금지.**

## Screens / Views

단일 페이지 스크롤 구조. 상단부터 순서대로:

### 00. Resume Header

**Purpose**: 첫인상 및 핵심 정보 (이름/역할/요약/연락처/지표) 스캔.

**Layout**:
- `<header class="resume-header">`, `padding: 72px 0 48px`
- `border-bottom: 1px solid var(--border)`
- 내부 `.page` 컨테이너: `max-width: 960px`, `padding: 0 var(--gutter)` (gutter = `clamp(20px, 4vw, 56px)`)

**Components**:
- **Name (h1)**: `clamp(36px, 5vw, 52px)` / 600 / letter-spacing -0.03em / line-height 1.05
  - "우해인" + `<span style="color:var(--fg-3); font-weight:400;">/ Woo Haein</span>`
- **Role (p)**: 17px / 400 / `var(--fg-1)`
  - "백엔드 · AI 풀스택 개발자 | Adobe 마케팅 솔루션 · AI 시스템 설계"
- **Summary (p)**: 15px / `var(--fg-1)` / max-width 680px / line-height 1.7
  - 확정 문구:
    > Adobe Campaign Classic(v7/v8)과 Adobe Target을 대기업 환경에서 **3년간 구축·이관·운영**했고, LLM 기반 AI 시스템을 설계·개발·배포합니다. Cursor AI와 에이전트 파이프라인을 활용해 기획부터 배포까지 완결짓는 업무를 지향합니다.
- **Contact line**: flex wrap, gap `20px 28px`, 13px / `var(--fg-2)`
  - **2개 아이템만**: Email · Phone
  - 각 아이템: label(11px mono uppercase `var(--fg-3)`) + value/link

- **Stats bar** (`.stats-bar`):
  - Grid 4-column, gap 0, `padding: 20px 24px`
  - Background `var(--bg-alt)`, `border: 1px solid var(--border)`, radius 4px
  - `@media (max-width: 720px)` → 2-column
  - 각 stat: padding `0 16px`, `border-right: 1px solid var(--border)`
    - Value: 22px / 600 / letter-spacing -0.01em
    - Label: 12px / `var(--fg-2)`
  - **4개 값**: "3년+ 실무 경력", "6 주요 프로젝트", "2 공인 자격증", **"1 서브 프로젝트"**

### 01. About (핵심 역량)

**Purpose**: 3가지 각도로 정체성 소개.

**Layout**:
- `.section-head`: grid `180px 1fr`, gap 40px → 720px 이하 단일 컬럼
- Section-num: 11px mono uppercase letter-spacing 0.08em `var(--fg-3)` — "01. About"
- Section-title: 22px / 600 / letter-spacing -0.01em — "핵심 역량"

- `.about-grid`: 3-column, gap 16px → 720px 이하 단일 컬럼
- `.about-item`:
  - padding `20px 22px`, `var(--bg-alt)`, border, radius 4px
  - h3: 15px / 600
  - p: 13.5px / `var(--fg-1)` / line-height 1.6 / margin-bottom 12px
  - ul: 12.5px / `var(--fg-2)` / padding-left 16px / line-height 1.7

**3개 카드 확정 카피**:

1. **Adobe 마케팅 솔루션**
   > Adobe Campaign Classic v7/v8과 Adobe Target을 대기업 환경에서 구축·이관·운영. 레거시 솔루션 내부 동작을 이해하고 커스텀 로직을 개발할 수 있습니다.
   - Campaign v7/v8 구축·이관·운영
   - Adobe Target 개인화 마케팅
   - 대기업 CRM 데이터 I/F 설계

2. **AI 시스템 설계**
   > LLM 기반 분석 시스템을 개발할 수 있고, 자연어로 SQL 타겟 추출 코드를 제작하는 LLM을 개발하였습니다.
   - RAG 파이프라인 · pgvector · Neo4j
   - MCP Tools · Claude API 오케스트레이션
   - 프롬프트/컨텍스트 엔지니어링

3. **1인 풀스택 개발**
   > Cursor AI 기반 에이전트 파이프라인과 Phase 단위 검증 체계로 기획·개발·배포·인프라를 1인으로 완결하는 업무 방식을 정립했습니다.
   - Phase 단위 개발 · 검증 게이트
   - Context Document 표준화
   - 기획 → 배포 · 인프라 전 주기 수행

### 02. Experience (경력 및 경험)

**Purpose**: 6개 프로젝트를 **시작일 최근순** 리스트로.

**Section title**: "경력 및 경험" (요약 아님)

**Layout**:
- `.timeline-list`: flex column, `border-left: 1px solid var(--border-strong)`, `padding-left: 24px`, `margin-left: 8px`
- `.timeline-row`: grid `160px 1fr`, gap 24px, padding `14px 0`, `border-bottom: 1px dashed var(--border)`
- Row 왼쪽 `-30px`에 9px dot (`::before`), `row.current`는 dot이 accent color로 채워짐
- `@media (max-width: 720px)` → 단일 컬럼

**Content 스타일**:
- `.timeline-period`: 12px mono / `var(--fg-2)`
- `.timeline-title`: 14.5px / 500
- `.timeline-meta`: 12.5px / `var(--fg-2)`
  - `.timeline-badge`: inline-block, 10.5px mono, padding `1px 7px`, radius 3px, `var(--bg-sunken)` / `var(--fg-2)`
  - `.primary`: `var(--accent-soft)` bg, `var(--accent)` fg

**6개 row 확정 순서** (시작일 최근순):

| 기간 | 타이틀 | 배지 · 메타 |
|---|---|---|
| 2026.09.01 — 09.11 | LUA 기업 웹사이트 개발 (1.5주, 1인 전담) + `개인 프로젝트` 인라인 배지 | `1인` / 루아주식회사 · 기획 · 개발 · 배포 · 인프라 |
| 2026.05 — 진행중 | LG 유플러스 Adobe Target / Campaign 구축 | `Adobe` / LG 유플러스 · 8명 팀 · 백엔드 · 솔루션 커스텀 개발 |
| 2025.10 — 진행중 | iBank BI Report — 노코드 BI 플랫폼 | `자체` / 3명 팀 · 메인 풀스택 개발 |
| 2025.10 — 2026.02 | ACC BI Assistant — AI 마케팅 분석 시스템 | `자체` / 1인 풀스택 · RAG · MCP |
| 2025.05 — 2025.09 | 삼성전자 마케팅 Adobe Campaign V7 → V8 업그레이드 | `Adobe` / 삼성전자 · 5명 팀 · 데이터 이관 · 검수 · API 개발 |
| 2023.06 — 2025.04 | 삼성물산 에버랜드 App 연계 Adobe Campaign 구축·운영 | `Adobe` / 삼성물산 에버랜드 · 4명 팀 · 백엔드 · CRM 기능 설계 · 운영 17개월 |

`.current` 클래스는 진행중이거나 최근 완료된 row(위 3~4개)에 부여.

### 03. Skills (기술 스택)

**Purpose**: 카테고리별 스택 표 + AI Tools 강조.

**Layout**:
- `.skills-table`: grid `200px 1fr`, `border: 1px solid var(--border)`, radius 4px, overflow hidden
- 각 row는 `display: contents`
- `.skills-cat` (왼쪽): padding `14px 20px`, `var(--bg-alt)`, `border-bottom + border-right`, 13px / 600
  - `.highlight`: `color: var(--accent)`
  - `small`: 10px mono / 400 / `var(--fg-3)` / letter-spacing 0.05em / margin-left 6px
- `.skills-list` (오른쪽): padding `14px 20px`, `border-bottom`, flex wrap, gap `6px 10px`

- `.skill-tag`: 12px mono / `var(--fg-1)`, padding `2px 8px`, `var(--bg-alt)`, border, radius 3px
  - `.strong`: `var(--accent-soft)` bg, `var(--accent)` fg, `var(--accent)` border, weight 500

**6 rows 확정**:
1. Adobe 솔루션 — Adobe Campaign v7/v8, Adobe Target (strong), AEP Web SDK, JSSP
2. **AI Tools (highlight, `<small>주력</small>`)** — Cursor AI, Claude API, MCP, LangGraph, RAG (strong), OpenRouter, Gemini Embedding, Prompt Engineering, Context Engineering
3. Backend — Python, FastAPI, Starlette, Django, Java, Spring Boot, Next.js, TypeScript, SQLAlchemy, MyBatis/JPA, REST API
4. Frontend — **React / React Native**, Vite, Tailwind CSS, Recharts, Chart.js, JavaScript, JSP/jQuery
5. Database — PostgreSQL, pgvector, Oracle, MariaDB, MySQL, Neo4j, Redis, SQLite, ETL 설계
6. Infra · DevTools — Rocky Linux, Nginx, systemd, Certbot/HTTPS, **firewall**, **fail2ban**, Git, JWT/bcrypt, IntelliJ/VSCode

**Certs (`.certs-line`)**:
- flex wrap, gap 24px, margin-top 20px, 13px / `var(--fg-1)`
- 3개: 정보처리기사(2024.12), SQLD(2025.04), 국비 960시간 수료

### 04. PART 01 — Adobe 마케팅 솔루션 구축 · 운영

**part-divider** 소개 카피:
> LG 유플러스 · 삼성전자 · 삼성물산 에버랜드. 대기업 마케팅 시스템의 백엔드에서 데이터 · 타겟팅 · 발송 · 이관을 담당했습니다.

**3개 프로젝트** (시작일 최근순): LG U+ → 삼성전자 → 에버랜드

### 05. PART 02 — AI 기반 자체 시스템 개발

**part-divider** 소개 카피:
> LLM 기반 분석 시스템을 개발하고, 자연어로 SQL 타겟 추출 코드를 제작하는 LLM을 개발한 프로젝트입니다.

**2개 프로젝트** (시작일 최근순): iBank → ACC

- **iBank 프로젝트 헤더 우측**: `<div class="project-links">` 안에 "Notion / 프로젝트 문서 ↗" 링크 (`https://gainful-sweater-ad5.notion.site/iBank-BI-Report-Project-344cbf895fe08028bfaafd46830da630`)

### 06. PART 03 — 개인 프로젝트 (신설)

**part-divider** 소개 카피:
> 회사 업무 외로 개인이 직접 기획 · 개발 · 배포하여 클라이언트에 제공한 프로젝트입니다.

**1개 프로젝트**: LUA 기업 홍보 웹사이트

- **LUA 프로젝트 헤더 우측**: `<div class="project-links">` 안에 "Live / luacorp.co.kr ↗" 링크 (`https://www.luacorp.co.kr/ko/`)
- Impact strip 4칸: `1.5주 · 34페이지 · 1명 · $0`
- 다이어그램 FIG.04 — 수평 Phase 0~7 파이프라인 + **수직 기능별 에이전트 역할 5개**: 오케스트레이터 · UI/UX 마스터 · 테스터 · 검증 마스터 · 공식문서 마스터

### 07. Project Cards 공통 구조

**Layout**:
- `.project`: padding `32px 0`, `border-top: 1px solid var(--border)` (첫 개는 없음)
- `.project-head`: grid `1fr auto`, gap `20px 28px`, align-items baseline, margin-bottom 18px
  - 왼쪽: 타이틀 + `.project-sub` (클라이언트 · 기간 · 팀 · 역할)
  - 오른쪽: `.project-links` (Notion/Live 링크가 있는 경우만)
- `.project-summary`: 14.5px / `var(--fg-1)` / line-height 1.7 / max-width 780px

**`.project-links` 스타일** (신규 추가된 클래스):
```css
.project-links {
  display: flex;
  gap: 16px;
  align-items: baseline;
  flex-shrink: 0;
  padding-top: 4px;
}
.project-links a {
  font-size: 12.5px;
  color: var(--accent);
  white-space: nowrap;
  display: inline-flex;
  align-items: center;
  gap: 4px;
  border-bottom: 1px solid transparent;
  transition: border-color 0.15s;
}
.project-links a:hover { border-bottom-color: var(--accent); }
.project-links .link-label {
  font-family: var(--font-mono);
  font-size: 10.5px;
  color: var(--fg-3);
  letter-spacing: 0.05em;
  text-transform: uppercase;
  margin-right: 6px;
}
```

**`.resp-grid`** (책임 그리드): grid `180px 1fr`, gap `12px 32px`, padding `18px 0`, dashed top+bottom border
- `.resp-label`: 12px mono / `var(--fg-2)` / uppercase / letter-spacing 0.03em
- `.resp-content`: 13.5px / `var(--fg-1)` / line-height 1.75
  - `ul`: padding-left 18px

**`.impact-strip`** (LUA 전용): grid 4-column, `var(--bg-alt)` bg, border, radius 4px, padding `16px 20px`
- `.impact-num`: 20px / 600 / `var(--accent)`
- `.impact-desc`: 12px / `var(--fg-2)`

**`.project-stack`** (footer row): margin-top 18px, padding-top 16px, dashed top border, flex gap 8px wrap

### 08. SVG Diagrams

**Layout**:
- `.diagram`: margin `20px 0`, padding 24px, `var(--bg-alt)`, border, radius 4px, overflow-x auto
- SVG: viewBox 기반, width 100%, height auto
- `.diagram-cap`: 11px mono / `var(--fg-3)` / margin-top 14px / dashed top border / text-align center

**SVG 스타일 클래스** (테마 자동 대응):
- `.d-label`: `fill: var(--fg)`, weight 600
- `.d-dim`: `fill: var(--fg-2)`, font-size 10px
- `.d-box`: `fill: var(--bg)`, `stroke: var(--border-strong)`, stroke-width 1
- `.d-box-accent`: `fill: var(--accent-soft)`, `stroke: var(--accent)`, stroke-width 1.2
- `.d-line`: `stroke: var(--fg-3)`, stroke-width 1.2, fill none
- `.d-line-accent`: `stroke: var(--accent)`, stroke-width 1.5, fill none

**다이어그램 4종** (원본 SVG는 `포트폴리오.html` 안에 인라인):
1. **FIG.01 (LG U+)** — SQL 생성 LLM 파이프라인: 마케터 → 프롬프트 → LLM → 검증기 → Adobe Campaign (아래 라벨: "타겟 추출 (SQL 코드 제작)"). 하단에 **Fatigue 커스텀 모듈**은 Adobe Campaign 박스 아래 배치되어 LLM과 독립임을 시각적으로 표현. 캡션에 이 사실 명시.
2. **FIG.02 (ACC BI Assistant)** — RAG · MCP 파이프라인: 사용자 → 1차 가공 → 임베딩 검색 → 2차 가공 → 3종 응답, 아래 MCP Tools, 위 Neo4j
3. **FIG.03 (삼성전자 V7→V8)** — V7 side → Migration Pipeline → V8 side (에버랜드 · LG U+ 이력 이관 흐름)
4. **FIG.04 (LUA Web)** — 수평 Phase 0~7 + 수직 5-role agent orchestration + 규칙 박스

### 09. 04. Methodology (개발 방법론)

**Purpose**: "1인 풀스택으로 어떻게 완결했는가"에 답하는 4-card.

**4개 카드 확정 카피**:

1. **Cursor AI + Context Docs**
   > 프로젝트 컨텍스트를 이해시키는 4종 문서를 표준화하여 에이전트의 오류율을 관리합니다.
   - Architecture Overview
   - Data Schema · Conventions
   - Coding Rules · Patterns
   - Test · Review Criteria

2. **Cursor AI + 로드맵 + Phase 게이트** *(이전 "Phase 게이트"에서 변경)*
   > 전체 로드맵과 체크리스트를 먼저 작성하고, Phase 단위로 분할해 각 전환 시점에 검증 게이트를 통과시켜 진행합니다.
   - 전체 로드맵 체크리스트 관리
   - Gate A — 산출물 존재 확인
   - Gate B — 검증 기준 충족
   - Gate C — 회귀 테스트 통과
   - Gate D — 최종 승인

3. **기능별 에이전트 직군화** *(이전 "UI 4-Stage 파이프라인"에서 전면 변경)*
   > UI만 나누는 것이 아닌, 개발 전 과정을 기능별 에이전트 역할로 분리해 책임과 판단 범위를 명확히 합니다.
   - 오케스트레이터 — 전체 조율 · 승인
   - UI/UX 마스터 — 하위 역할별 에이전트
   - 테스터 — 동작 · 회귀 검증
   - 검증 마스터 — 체크리스트 게이트
   - 공식문서 마스터 — 레퍼런스 반영

4. **Prompt · Context Engineering**
   > ACC BI Assistant · LG U+ SQL LLM 개발에서 축적한 프롬프트 설계 패턴.
   - Inject — 스키마 프롬프트 주입
   - Validate — 응답의 코드 재검증
   - Reuse — 필터 · Tool 재사용
   - Trace — Neo4j 이력 추적

### 10. 05. Education (교육 과정 프로젝트)

**Layout**:
- `.edu-highlight` (BankYam 최종 프로젝트): padding `18px 22px`, `var(--bg-alt)`, `border-left: 3px solid var(--accent)`, radius 4px
- `.edu-grid`: 2-column, gap 32px → 720px 이하 단일 컬럼

**팀 프로젝트 4개**: FileApple(Java) · PapayaMarket(Kotlin) · LitchiRoot(Django) · ZibPalm(Spring)
**개인 프로젝트 3개**: TNUniverse(Pygame) · 반도체 소재 데이터 분석(Pandas) · AI 이미지 분류(TensorFlow)
**최종 프로젝트**: BankYam — 뱅킹 + SNS 통합 플랫폼

### 11. 06. Contact

**Layout**: 상단 헤더와 같은 `.contact-line` 스타일 재사용, gap `32px 40px`, font-size 14px

**Content**: Email · Phone 2개만 (Notion/Live는 헤더에서도, Contact에서도 삭제됨. 각 프로젝트 헤더 링크로만 노출.)

### 12. Footer

**Layout**:
- `.resume-footer`: padding `40px 0 60px`, top border, 12px / `var(--fg-3)`
- flex space-between wrap
- 왼쪽: © 2026 우해인 · 백엔드/AI 풀스택 개발자
- 오른쪽 mono: Last updated · 2026.09

## Interactions & Behavior

이 페이지는 **정적 스크롤 문서**입니다. 인터랙션은 최소화되어 있습니다.

### Hover States
- `a.link:hover`: text-decoration-thickness 1px → 2px
- `.project-links a:hover`: border-bottom-color transparent → accent
- 그 외 카드/태그는 hover 반응 없음 (문서 톤 유지)

### Email Link 특이사항 (중요)
이메일 링크는 `<a href="#" onclick="this.href='mailto:'+'whi21'+String.fromCharCode(64)+'naver.com'">` 방식으로 **런타임에 조립**됩니다. Cloudflare Email Obfuscation 같은 프록시 계층이 mailto 링크를 자동 난독화하는 문제를 우회하기 위한 조치입니다. 프로덕션 이식 시 이 우회가 필요 없으면 `<a href="mailto:whi21@naver.com">`으로 되돌려도 무방합니다.

### Tweaks Panel (개발용, 프로덕션 제외 권장)
- Genspark Design 환경에서만 동작하는 우측 하단 패널
- 토글 2개: Light/Dark 모드, "인쇄 · PDF 저장" 버튼
- 프로덕션 이식 시 이 부분 삭제 — 필요하면 헤더 우측에 간단한 다크모드 토글 하나로 대체

### Print Support
- `@media print`가 완비되어 있음
- `Cmd/Ctrl + P` 또는 Tweaks 인쇄 버튼으로 PDF 저장 가능
- `.no-print` 클래스 요소(Tweaks panel)는 인쇄 시 자동 숨김
- 색상은 인쇄 친화적으로 재정의 (진한 텍스트, 밝은 배경)
- `.section`, `.project`, `.resume-header`에 `page-break-inside: avoid` 적용

### Responsive Breakpoint
- 단일 breakpoint: `720px`
- 이하일 때 대부분의 grid가 단일 컬럼으로 붕괴
- Diagram은 overflow-x auto로 좁은 화면에서 가로 스크롤

## State Management

거의 없음. 정적 페이지.

**로컬 UI 상태 (Tweaks 한정)**:
- `theme` (light/dark) — `<html data-theme="dark">` 속성으로 CSS 변수 오버라이드
- Tweaks Panel의 `useTweaks` hook이 localStorage 및 `__edit_mode_set_keys` postMessage 처리

프로덕션 이식 시 다크 모드가 필요하면 간단한 useState + localStorage로 재구현. 데이터 페칭 없음, 폼 없음, 라우팅 없음.

## Design Tokens

### Colors — Light (기본)

```css
--bg:            #FFFFFF   /* 페이지 배경 */
--bg-alt:        #FAFAF8   /* 카드/표 배경 (연한 웜톤) */
--bg-sunken:     #F4F3EF   /* stack 태그 배경 */
--fg:            #111214   /* 본문 텍스트 */
--fg-1:          #3A3D42   /* 보조 텍스트 */
--fg-2:          #6B6F76   /* 캡션/라벨 */
--fg-3:          #9AA0A6   /* 매우 흐린 텍스트 */
--border:        #E5E4DF   /* 표준 보더 */
--border-strong: #C9C6BE   /* 강조 보더 */
--accent:        #1E3A8A   /* 액센트 — 딥 잉크 블루 (인쇄에도 안전) */
--accent-soft:   #EEF2FF   /* 액센트 배경 */
```

### Colors — Dark (`[data-theme="dark"]`)

```css
--bg:            #0E0F11
--bg-alt:        #16181B
--bg-sunken:     #1B1E22
--fg:            #ECEEF0
--fg-1:          #C4C7CC
--fg-2:          #8B9098
--fg-3:          #5A5F66
--border:        #2A2D32
--border-strong: #3A3E45
--accent:        #8AB4FF
--accent-soft:   #1B2540
```

### Colors — Print (`@media print`)

```css
--bg: #FFFFFF; --bg-alt: #F8F8F5; --bg-sunken: #EFEEE9
--fg: #000000; --fg-1: #1F1F1F; --fg-2: #444; --fg-3: #666
--border: #D6D3CC; --border-strong: #A9A6A0
--accent: #1E3A8A
/* body: font-size 11pt, line-height 1.5 */
```

### Typography

**Font families**:
- `--font-body: 'Inter'`, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif
- `--font-mono: 'JetBrains Mono'`, 'SF Mono', Menlo, monospace
- `--font-serif: 'Instrument Serif'`, Georgia, serif — 변수만 정의됨. **실제 사용 없음** — 이식 시 로드 제거 권장

**Font loading**: `assets/fonts.css`가 Google Fonts를 import.

**Scale**:
| Element | Size | Weight | Extra |
|---|---|---|---|
| Name (h1) | `clamp(36px, 5vw, 52px)` | 600 | letter-spacing -0.03em, line-height 1.05 |
| Section / Part / Project title | 20–22px | 600 | letter-spacing -0.01em |
| About / Workflow card h3 | 15px | 600 | |
| Role | 17px | 400 | |
| Body / Summary | 15px / 14.5px | 400 | line-height 1.6–1.7 |
| Small body / list | 13.5px | 400 | |
| Caption | 12–13px | 400 | |
| Mono label | 11–12px | 400/500 | letter-spacing 0.03–0.15em |
| Stat value / Impact num | 20–22px | 600 | |

### Spacing

- `--gutter`: `clamp(20px, 4vw, 56px)` (좌우 패딩)
- `--section-gap`: `clamp(56px, 8vh, 88px)` (섹션 상하 패딩)
- `--page-max`: 960px (읽기 폭 상한 — 넓히지 말 것)
- 카드 내부 padding: 18–22px
- Grid gaps: 12px / 16px / 20px / 24px / 32px / 40px

### Border Radius

- 3px — 태그, 배지
- 4px — 카드, 표, 다이어그램 (표준)
- **그 외 없음**. `border-radius: 20px` 이상 사용 금지 (이력서 톤).

### Shadows

**없음.** 계층 구분은 `var(--bg-alt)` 배경과 border로만.

### Animation

**없음.** 유일한 트랜지션은 `body`의 `background/color transition 0.25s ease` (라이트/다크 전환).

## Assets

**외부 자산**:
- **Google Fonts** (`assets/fonts.css`가 import):
  - Inter (400, 500, 600, 700)
  - JetBrains Mono (400, 500, 600)
  - Instrument Serif (regular) — **실사용 없음**, 프로덕션 이식 시 제거 가능
- **React 18 / ReactDOM 18 / Babel Standalone** (CDN, tweaks-panel 렌더용) — 프로덕션 이식 시 함께 제거

**이미지 · 아이콘**: 없음. 이모지·아이코노그래피 배제. 모든 시각 요소는 SVG 인라인 또는 유니코드 문자(`·`, `↗` 등).

**외부 링크**:
- Notion (iBank BI Report): https://gainful-sweater-ad5.notion.site/iBank-BI-Report-Project-344cbf895fe08028bfaafd46830da630
- LUA Live Site: https://www.luacorp.co.kr/ko/
- Email: whi21@naver.com (링크는 onclick 우회 방식)
- Phone: 010-9871-4077

## Files

이 handoff 폴더에 포함된 파일:

- `포트폴리오.html` — 메인 HTML (모든 섹션 마크업, 카피, SVG 다이어그램 4종 원본)
- `styles-v2.css` — 디자인 시스템 전체 CSS (컬러, 타이포, 컴포넌트, 인쇄, 다크 모드, `.project-links` 포함)
- `assets/fonts.css` — Google Fonts import

**핸드오프에서 제외**:
- `tweaks_panel.jsx` — 개발 환경 UI. 프로덕션에선 필요 없음.

## Implementation Recommendations

### 프레임워크 선택
- **최우선 후보: Next.js 14+ App Router + Tailwind CSS**
  - CSS custom properties를 `globals.css`에 그대로 이식
  - 정적 페이지 하나라 라우팅 오버헤드 없음
  - `next/font/google`로 폰트 자동 최적화
  - Vercel 배포 5분
- **대안 1: Astro** — 정적 페이지에 이상적, JS 페이로드 최소
- **대안 2: 순수 HTML 그대로** — 지금 파일을 GitHub Pages/Netlify에 그대로 올려도 문제없음. 실무 시간 아끼는 게 목표라면 가장 빠름

### Tailwind 이식 시
- CSS 변수는 `tailwind.config.ts`의 `theme.extend.colors`에 매핑:
  ```ts
  colors: {
    bg: { DEFAULT: 'var(--bg)', alt: 'var(--bg-alt)', sunken: 'var(--bg-sunken)' },
    fg: { DEFAULT: 'var(--fg)', 1: 'var(--fg-1)', 2: 'var(--fg-2)', 3: 'var(--fg-3)' },
    accent: { DEFAULT: 'var(--accent)', soft: 'var(--accent-soft)' },
    border: { DEFAULT: 'var(--border)', strong: 'var(--border-strong)' },
  }
  ```
- `clamp()` 값은 arbitrary values 사용: `text-[clamp(36px,5vw,52px)]`
- 4개 SVG 다이어그램은 React 컴포넌트로 추출 권장 (`SqlLlmDiagram`, `RagPipelineDiagram`, `MigrationDiagram`, `AgentOrchestrationDiagram`)

### 이식 시 체크리스트
- [ ] `@media print` 규칙 유지 (이력서 PDF 출력이 이 포트폴리오의 주요 사용 방식 중 하나)
- [ ] 다이어그램 SVG 4종 → 컴포넌트로 추출, 클래스는 CSS 변수 바인딩 유지
- [ ] Instrument Serif 로드 제거 (실사용 없음)
- [ ] Tweaks panel 및 React/Babel CDN 스크립트 제거
- [ ] 이메일 링크 onclick 우회 → 필요 없으면 표준 `mailto:` 로 복원
- [ ] 라이트 모드가 기본. 다크 모드는 선택적. `prefers-color-scheme: dark` 조합 권장
- [ ] Meta 태그 보강 (title, description, OG image 등 — 채용담당자가 링크 미리보기로 봄)
- [ ] `lang="ko"` 유지

### 접근성 개선 여지 (현재 최소한만 있음)
- 각 `<section>`에 `aria-labelledby` 로 h2 연결
- Diagram SVG에 `<title>` + `<desc>` 삽입 또는 `role="img"` + `aria-label`
- 스킬 태그 리스트를 `<ul role="list">`로 명시
- Skip navigation 링크 추가

### 배포
- **Vercel**: GitHub 리포 push → Import → Deploy (2분)
- **Netlify**: 폴더 드래그앤드롭 (30초)
- **GitHub Pages**: 리포 `main` 브랜치의 파일을 Pages로 노출
- 커스텀 도메인 (예: `haein.dev`) 연결 시 이력서 한 줄이 훨씬 강해짐

## Notes for the Developer

- **카피는 확정본**입니다. "재직중"이 아닌 "진행중", "solo capable" 같은 캐주얼 영어 배제, "레거시 위에 AI를 올릴 수 있습니다" 같은 서술체를 "커스텀 로직을 개발할 수 있습니다"로 명사구화 등, 이력서 톤으로 검수된 문장입니다. `포트폴리오.html`의 텍스트를 그대로 사용하십시오. 요약·의역 금지.
- **PART 01/02/03 프로젝트 순서는 시작일 최근순**. 임의로 재배열하지 마십시오.
- **02. Experience 타임라인**도 시작일 최근순 (LUA가 맨 위, 에버랜드가 맨 아래).
- **4개 SVG 다이어그램**은 프로젝트별 정체성 요소입니다. viewBox·좌표·라벨을 임의 변경하지 마십시오. CSS 변수로 컬러 바인딩되어 있어 테마 전환 시 자동 적응합니다.
- **FIG.01 (LG U+)** — Fatigue 모듈은 Adobe Campaign 아래에 배치되어 "LLM과 독립"임을 시각적으로 표현. 캡션에도 이 사실이 명시되어 있음. 위치 변경 금지.
- **AI Tools 카테고리(3번째 skills row)** 는 시각 강조가 필수. `.skills-cat.highlight`와 tag의 `.strong` 스타일이 이 강조를 담당.
- **LUA Web의 `.impact-strip`** (`1.5주 · 34페이지 · 1명 · $0`)는 이 포트폴리오에서 가장 임팩트 있는 요소. 4-column grid + 좌측 accent color 숫자 반드시 유지.
- **인쇄 최적화(@media print)** 는 채용 사이트 첨부용 PDF 출력에 사용됩니다. 필수 이식 항목.
- **읽기 폭 960px 유지**. 문서 톤이라 폭을 넓히면 안 됩니다.
- **애니메이션 추가 금지**. 문서 톤 유지를 위해 의도적으로 애니메이션이 없습니다.
