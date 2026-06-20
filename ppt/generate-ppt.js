const pptxgen = require("pptxgenjs");

const pres = new pptxgen();
pres.layout = "LAYOUT_16x9"; // 10" × 5.625"
pres.author = "AI NiuMa Team";
pres.title = "AI 端侧出题系统";

// ── Color Palette: Fresh & Bright ──
const C = {
  bg:       "F0F4FF",
  cardBg:   "FFFFFF",
  cardBorder:"DDE4F0",
  primary:  "2563EB",
  teal:     "0D9488",
  amber:    "D97706",
  green:    "059669",
  red:      "DC2626",
  purple:   "7C3AED",
  text:     "1E293B",
  textSec:  "64748B",
  textTer:  "94A3B8",
};

// ── Helpers ──
const makeShadow = () => ({
  type: "outer", color: "000000", blur: 6, offset: 1, angle: 135, opacity: 0.08,
});

function addCard(slide, x, y, w, h, accentColor) {
  // Card background
  slide.addShape(pres.shapes.RECTANGLE, {
    x, y, w, h, fill: { color: C.cardBg },
    line: { color: C.cardBorder, width: 0.75 },
    shadow: makeShadow(),
  });
  // Top accent line
  slide.addShape(pres.shapes.RECTANGLE, {
    x, y, w, h: 0.04, fill: { color: accentColor },
  });
}

function addPageTitle(slide, title, subtitle) {
  slide.background = { color: C.bg };
  // Title
  slide.addText(title, {
    x: 0.6, y: 0.3, w: 8.8, h: 0.55,
    fontSize: 28, fontFace: "Arial", bold: true, color: C.text,
    margin: 0, align: "left",
  });
  if (subtitle) {
    slide.addText(subtitle, {
      x: 0.6, y: 0.82, w: 8.8, h: 0.35,
      fontSize: 13, fontFace: "Arial", color: C.textSec,
      margin: 0, align: "left",
    });
  }
  // Thin separator line
  slide.addShape(pres.shapes.LINE, {
    x: 0.6, y: 1.18, w: 8.8, h: 0,
    line: { color: C.cardBorder, width: 0.75 },
  });
}

// ──────────────────────────────────────────────
// Slide 1: Cover
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  slide.background = { color: C.bg };

  // Decorative shapes - top right
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 6.5, y: 0, w: 3.5, h: 3.0,
    fill: { color: C.primary, transparency: 88 },
  });
  // Bottom left
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0, y: 3.5, w: 4, h: 2.125,
    fill: { color: C.teal, transparency: 90 },
  });

  // Logo
  slide.addImage({
    path: "d:/桌面/AGithub/ai-practice-aliyun/frontend/src/static/niuma-logo-transparent-lite.png",
    x: 0.8, y: 0.35, w: 0.65, h: 0.65,
  });

  // Main title
  slide.addText("AI 端侧出题系统", {
    x: 0.8, y: 1.2, w: 8.4, h: 1.0,
    fontSize: 44, fontFace: "Arial", bold: true, color: C.text,
    align: "left", margin: 0,
  });

  // Subtitle
  slide.addText("基于 MNN 推理框架的离线 AI 刷题方案", {
    x: 0.8, y: 2.2, w: 8.4, h: 0.6,
    fontSize: 18, fontFace: "Arial", color: C.textSec,
    align: "left", margin: 0,
  });

  // Accent bar under title
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 2.9, w: 1.5, h: 0.04,
    fill: { color: C.primary },
  });

  // Bottom info
  slide.addText("纯端侧 · 零网络 · 离线可用 · 隐私安全", {
    x: 0.8, y: 3.5, w: 8.4, h: 0.4,
    fontSize: 13, fontFace: "Arial", color: C.textTer,
    align: "left", margin: 0,
  });

  // Bottom thin bar
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0, y: 5.55, w: 10, h: 0.075,
    fill: { color: C.primary },
  });
}

// ──────────────────────────────────────────────
// Slide 2: 目录
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  slide.background = { color: C.bg };

  slide.addText("目  录", {
    x: 0.6, y: 0.3, w: 8.8, h: 0.6,
    fontSize: 28, fontFace: "Arial", bold: true, color: C.text,
    margin: 0,
  });
  slide.addShape(pres.shapes.LINE, {
    x: 0.6, y: 0.95, w: 8.8, h: 0,
    line: { color: C.cardBorder, width: 0.75 },
  });

  const items = [
    { num: "01", title: "应用场景",      desc: "离线出题的核心价值场景", icon: C.primary },
    { num: "02", title: "用户痛点",      desc: "传统方案的五大困境",     icon: C.red },
    { num: "03", title: "技术方案",      desc: "模型选型 · 推理框架 · 端侧适配", icon: C.primary },
    { num: "04", title: "创新点",        desc: "七大核心创新优势",       icon: C.teal },
    { num: "05", title: "预期效果",      desc: "可量化的交付指标",       icon: C.amber },
  ];

  items.forEach((item, i) => {
    const yBase = 1.3 + i * 0.78;

    // Number circle
    slide.addShape(pres.shapes.OVAL, {
      x: 0.9, y: yBase + 0.05, w: 0.42, h: 0.42,
      fill: { color: item.icon },
    });
    slide.addText(item.num, {
      x: 0.9, y: yBase + 0.05, w: 0.42, h: 0.42,
      fontSize: 16, fontFace: "Arial", bold: true, color: "FFFFFF",
      align: "center", valign: "middle", margin: 0,
    });

    // Title
    slide.addText(item.title, {
      x: 1.55, y: yBase, w: 6, h: 0.3,
      fontSize: 20, fontFace: "Arial", bold: true, color: C.text,
      margin: 0,
    });
    // Description
    slide.addText(item.desc, {
      x: 1.55, y: yBase + 0.3, w: 6, h: 0.25,
      fontSize: 12, fontFace: "Arial", color: C.textSec,
      margin: 0,
    });
  });
}

// ──────────────────────────────────────────────
// Slide 3: 应用场景
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  addPageTitle(slide, "应用场景", "离线出题 · 五类核心场景");

  const scenes = [
    { icon: "面", color: C.primary, title: "面试备战",
      desc: "JD / 面经 / 技术文档\n→ 本地生成针对性选择题\n→ 反复练习 · 错题重刷" },
    { icon: "考", color: C.teal, title: "考试复习",
      desc: "课堂笔记 / 教材章节\n→ 端侧模型提取知识点\n→ 做题反馈 · 标注掌握" },
    { icon: "训", color: C.amber, title: "企业培训",
      desc: "制度文档 / 产品手册\n→ 本地生成测验卷\n→ 答题通关 · 成绩沉淀" },
    { icon: "学", color: C.green, title: "碎片自学",
      desc: "阅读文章 / 技术博客\n→ 随时随地自我检验\n→ 知识吸收效果即时反馈" },
    { icon: "离", color: C.purple, title: "离线场景",
      desc: "飞机 / 工地 / 展会 / 野外\n→ 100% 本地推理出题\n→ 无需网络 · 无需登录" },
  ];

  const cardW = 2.7;
  const cardH = 1.85;
  const startX = 0.5;
  const gapX = 0.2;
  const startY = 1.35;
  const gapY = 0.18;

  scenes.forEach((s, i) => {
    const col = i % 3;
    const row = Math.floor(i / 3);
    const x = startX + col * (cardW + gapX);
    const y = startY + row * (cardH + gapY);

    // Card
    addCard(slide, x, y, cardW, cardH, s.color);

    // Icon box (top left)
    slide.addShape(pres.shapes.RECTANGLE, {
      x: x + 0.18, y: y + 0.18, w: 0.42, h: 0.42,
      fill: { color: s.color, transparency: 15 },
      line: { color: s.color, width: 0.5 },
    });
    slide.addText(s.icon, {
      x: x + 0.18, y: y + 0.18, w: 0.42, h: 0.42,
      fontSize: 16, fontFace: "Arial", bold: true, color: s.color,
      align: "center", valign: "middle", margin: 0,
    });

    // Title
    slide.addText(s.title, {
      x: x + 0.75, y: y + 0.18, w: cardW - 1.0, h: 0.42,
      fontSize: 15, fontFace: "Arial", bold: true, color: C.text,
      valign: "middle", margin: 0,
    });

    // Description
    slide.addText(s.desc, {
      x: x + 0.18, y: y + 0.72, w: cardW - 0.36, h: cardH - 0.9,
      fontSize: 10.5, fontFace: "Arial", color: C.textSec,
      margin: 0, lineSpacingMultiple: 1.4,
    });
  });
}

// ──────────────────────────────────────────────
// Slide 4: 用户痛点
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  addPageTitle(slide, "用户痛点", "传统方案的五大困境 → 端侧 AI 出题");

  const pains = [
    { title: "出题成本高",   desc: "手动出题每道耗时\n3-10 分钟",       icon: "C", color: C.red },
    { title: "题目不匹配",   desc: "市面题目与个人\n学习材料脱节",       icon: "M", color: C.amber },
    { title: "无错题闭环",   desc: "错了就错，缺乏系统化\n错题→掌握机制", icon: "L", color: C.purple },
    { title: "必须联网",     desc: "主流 AI 工具依赖\n云端 API 调用",   icon: "N", color: C.red },
    { title: "隐私顾虑",     desc: "敏感材料上传云端\n存在安全风险",     icon: "P", color: C.amber },
  ];

  const cardW = 2.65;
  const cardH = 1.45;
  const startX = 0.5;
  const gap = 0.2;
  const startY = 1.45;

  pains.forEach((p, i) => {
    const col = i % 3;
    const row = Math.floor(i / 3);
    const x = startX + col * (cardW + gap);
    const y = startY + row * (cardH + 0.25);

    addCard(slide, x, y, cardW, cardH, p.color);

    // Left icon label
    slide.addShape(pres.shapes.RECTANGLE, {
      x: x + 0.16, y: y + 0.2, w: 0.38, h: 0.38,
      fill: { color: p.color, transparency: 80 },
    });
    slide.addText(p.icon, {
      x: x + 0.16, y: y + 0.2, w: 0.38, h: 0.38,
      fontSize: 13, fontFace: "Arial", bold: true, color: p.color,
      align: "center", valign: "middle", margin: 0,
    });

    slide.addText(p.title, {
      x: x + 0.68, y: y + 0.18, w: cardW - 0.9, h: 0.4,
      fontSize: 15, fontFace: "Arial", bold: true, color: C.text,
      valign: "middle", margin: 0,
    });

    slide.addText(p.desc, {
      x: x + 0.16, y: y + 0.65, w: cardW - 0.32, h: cardH - 0.75,
      fontSize: 10.5, fontFace: "Arial", color: C.textSec,
      margin: 0, lineSpacingMultiple: 1.3,
    });
  });

  // Bottom summary - arrow from cloud to edge
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.5, y: 4.55, w: 9.0, h: 0.55,
    fill: { color: C.primary, transparency: 82 },
    line: { color: C.primary, width: 0.5 },
  });
  slide.addText("传统方案：依赖云端 → 受限网络 → 隐私暴露       →      我们的方案：纯端侧推理 → 离线可用 → 隐私无忧", {
    x: 0.7, y: 4.58, w: 8.6, h: 0.5,
    fontSize: 11, fontFace: "Arial", color: C.primary,
    align: "center", valign: "middle", margin: 0,
  });
}

// ──────────────────────────────────────────────
// Slide 5: 技术方案 · 模型选型
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  addPageTitle(slide, "技术方案 · 模型选型", "小模型 + 强量化 = 能在手机上跑的大语言模型");

  // Three columns
  const cols = [
    {
      title: "基座模型",
      color: C.primary,
      items: [
        { label: "模型", value: "Qwen2.5-0.5B-Instruct" },
        { label: "参数量", value: "5 亿 (0.5B)" },
        { label: "选型理由", value: "端侧\"甜区\"大小：\n可运行 + 可接受质量\n+ 可接受延迟" },
      ],
    },
    {
      title: "量化方案",
      color: C.teal,
      items: [
        { label: "方法", value: "HQQ 4-bit 量化" },
        { label: "体积", value: "942MB → 250MB" },
        { label: "压缩率", value: "约 74%，精度损失可控" },
      ],
    },
    {
      title: "运行时规格",
      color: C.green,
      items: [
        { label: "磁盘占用", value: "~250MB" },
        { label: "运行时内存", value: "~500MB" },
        { label: "设备要求", value: "6GB RAM 中端机\n即可流畅运行" },
      ],
    },
  ];

  const colW = 2.75;
  const startX = 0.5;
  const colGap = 0.25;

  cols.forEach((col, ci) => {
    const x = startX + ci * (colW + colGap);
    const y = 1.5;

    // Column card
    slide.addShape(pres.shapes.RECTANGLE, {
      x, y, w: colW, h: 3.5,
      fill: { color: C.cardBg },
      line: { color: C.cardBorder, width: 0.75 },
      shadow: makeShadow(),
    });

    // Top color bar
    slide.addShape(pres.shapes.RECTANGLE, {
      x, y, w: colW, h: 0.05,
      fill: { color: col.color },
    });

    // Col header
    slide.addText(col.title, {
      x: x + 0.2, y: y + 0.25, w: colW - 0.4, h: 0.35,
      fontSize: 16, fontFace: "Arial", bold: true, color: col.color,
      align: "center", margin: 0,
    });

    col.items.forEach((item, ii) => {
      const iy = y + 0.85 + ii * 0.85;
      slide.addText(item.label, {
        x: x + 0.2, y: iy, w: colW - 0.4, h: 0.2,
        fontSize: 10, fontFace: "Arial", color: C.textTer,
        margin: 0,
      });
      slide.addText(item.value, {
        x: x + 0.2, y: iy + 0.2, w: colW - 0.4, h: 0.55,
        fontSize: 13, fontFace: "Arial", bold: true, color: C.text,
        margin: 0, lineSpacingMultiple: 1.2,
      });
    });
  });
}

// ──────────────────────────────────────────────
// Slide 6: 技术方案 · 推理框架
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  addPageTitle(slide, "技术方案 · 推理框架", "阿里 MNN → JNI 桥接 → 前端的完整推理栈");

  // Architecture: 3-layer stack
  const layers = [
    { name: "Uni-app (Vue 3 / TypeScript)",    detail: "前端业务层 · llm.ts 统一推理入口 · 环境自适应路由", color: C.primary, y: 1.45 },
    { name: "MnnQwenPlugin (Kotlin / JNI)",    detail: "Android 原生插件 · 模型加载/分词/解码管理 · 状态回调", color: C.teal,    y: 2.7 },
    { name: "MNN LLM Runtime (C++ / ARM NEON)", detail: "底层推理引擎 · KV Cache · Token Streaming · 指令集自适应", color: C.green,   y: 3.95 },
  ];

  const boxW = 8.6;
  const boxH = 0.95;
  const boxX = 0.7;

  // Draw connecting arrows between layers
  [1.8, 3.1].forEach((arrowY) => {
    slide.addShape(pres.shapes.LINE, {
      x: 5.0, y: arrowY + 0.55, w: 0, h: 0.3,
      line: { color: C.textTer, width: 1.5, endArrowType: "triangle" },
    });
  });

  layers.forEach((layer) => {
    // Layer box
    slide.addShape(pres.shapes.RECTANGLE, {
      x: boxX, y: layer.y, w: boxW, h: boxH,
      fill: { color: C.cardBg },
      line: { color: C.cardBorder, width: 0.75 },
      shadow: makeShadow(),
    });

    // Left color accent
    slide.addShape(pres.shapes.RECTANGLE, {
      x: boxX, y: layer.y, w: 0.07, h: boxH,
      fill: { color: layer.color },
    });

    // Layer name
    slide.addText(layer.name, {
      x: boxX + 0.25, y: layer.y + 0.1, w: boxW - 0.5, h: 0.35,
      fontSize: 15, fontFace: "Arial", bold: true, color: layer.color,
      margin: 0, align: "left",
    });
    // Detail
    slide.addText(layer.detail, {
      x: boxX + 0.25, y: layer.y + 0.45, w: boxW - 0.5, h: 0.4,
      fontSize: 10.5, fontFace: "Arial", color: C.textSec,
      margin: 0, align: "left",
    });
  });

  // Side note: AAR packaging
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.5, y: 5.0, w: 9.0, h: 0.38,
    fill: { color: C.primary, transparency: 80 },
  });
  slide.addText("打包：模型 + MNN 运行时 → ~226MB AAR → 一键集成 · 首次启动自动解压", {
    x: 0.6, y: 5.02, w: 8.8, h: 0.34,
    fontSize: 11, fontFace: "Arial", color: C.primary,
    align: "center", valign: "middle", margin: 0,
  });
}

// ──────────────────────────────────────────────
// Slide 7: 技术方案 · 端侧适配
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  addPageTitle(slide, "技术方案 · 端侧适配思路", "六大适配策略保障端侧体验");

  const adapts = [
    { title: "模型轻量化",    desc: "HQQ 4-bit 量化\n942→250MB",              color: C.primary },
    { title: "指令集自适应",  desc: "运行时探测 ARM NEON\n/ SVE / SME2",      color: C.teal },
    { title: "双 Prompt 策略",desc: "完整版 vs 精简版\n匹配小模型上下文窗口",  color: C.amber },
    { title: "环境降级",      desc: "H5/小程序 → Mock 实现\n开发调试不中断",  color: C.green },
    { title: "参数引导",      desc: "UI 约束：800字材料\n3-5题·管理预期",     color: C.purple },
    { title: "非原生降级",    desc: "不支持 → 提示升级\n首次启动自动解压",    color: C.red },
  ];

  const cardW = 2.7;
  const cardH = 1.25;
  const startX = 0.5;
  const gapX = 0.2;
  const startY = 1.45;
  const gapY = 0.2;

  adapts.forEach((a, i) => {
    const col = i % 3;
    const row = Math.floor(i / 3);
    const x = startX + col * (cardW + gapX);
    const y = startY + row * (cardH + gapY);

    addCard(slide, x, y, cardW, cardH, a.color);

    slide.addText(a.title, {
      x: x + 0.16, y: y + 0.12, w: cardW - 0.32, h: 0.35,
      fontSize: 14, fontFace: "Arial", bold: true, color: a.color,
      margin: 0,
    });
    slide.addText(a.desc, {
      x: x + 0.16, y: y + 0.5, w: cardW - 0.32, h: cardH - 0.6,
      fontSize: 10, fontFace: "Arial", color: C.textSec,
      margin: 0, lineSpacingMultiple: 1.3,
    });
  });

  // Bottom thought
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.5, y: 4.55, w: 9.0, h: 0.45,
    fill: { color: C.amber, transparency: 82 },
    line: { color: C.amber, width: 0.5 },
  });
  slide.addText("核心思路：不追求参数规模 → 追求可部署性 + 可用性的最优解", {
    x: 0.6, y: 4.57, w: 8.8, h: 0.4,
    fontSize: 13, fontFace: "Arial", bold: true, color: C.amber,
    align: "center", valign: "middle", margin: 0,
  });
}

// ──────────────────────────────────────────────
// Slide 8: 创新点
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  addPageTitle(slide, "创新点", "七大核心优势");

  const innovations = [
    { num: "01", color: C.primary, title: "纯端侧 AI 出题",
      desc: "不联网也能让 AI 出题\n0.5B 量化模型 + MNN 引擎\n100% 本地推理" },
    { num: "02", color: C.teal, title: "HQQ 4-bit 量化部署",
      desc: "942MB → 250MB\n塞进中端手机\n运行时内存 ~500MB" },
    { num: "03", color: C.amber, title: "两阶段 Pipeline",
      desc: "先提取知识点\n再生成题目\n小模型也能出高质量题" },
    { num: "04", color: C.green, title: "多层容错 Fallback",
      desc: "JSON 修复 → 修复重试\n→ 模板题目 → 规则兜底\n100% 出题成功率" },
    { num: "05", color: C.purple, title: "题集 + AI 标签",
      desc: "自动归档 + AI 打标签\n错题 / 掌握双维度管理\n形成个人知识体系" },
    { num: "06", color: C.red, title: "SME2 指令集适配",
      desc: "运行时检测 ARM SME2\n新芯片推理更快\n面向未来硬件" },
    { num: "07", color: C.primary, title: "跨端统一架构",
      desc: "Uni-app + MNN 插件\nH5 调试 / 小程序分发\nApp 离线推理" },
  ];

  const cardW = 2.7;
  const cardH = 1.2;
  const startX = 0.5;
  const gapX = 0.2;
  const startY = 1.35;
  const gapY = 0.16;

  innovations.forEach((inv, i) => {
    const col = i % 3;
    const row = Math.floor(i / 3);
    const x = startX + col * (cardW + gapX);
    const y = startY + row * (cardH + gapY);

    let actualX = x;
    let actualY = y;
    if (i === 6) {
      // Center the last item in a 2-col-style middle position
      actualX = startX + (cardW + gapX);
      actualY = startY + 2 * (cardH + gapY);
    }

    addCard(slide, actualX, actualY, cardW, cardH, inv.color);

    // Number badge (top right of card)
    slide.addShape(pres.shapes.RECTANGLE, {
      x: actualX + cardW - 0.58, y: actualY + 0.12, w: 0.42, h: 0.28,
      fill: { color: inv.color, transparency: 15 },
      line: { color: inv.color, width: 0.5 },
    });
    slide.addText(inv.num, {
      x: actualX + cardW - 0.58, y: actualY + 0.12, w: 0.42, h: 0.28,
      fontSize: 11, fontFace: "Arial", bold: true, color: inv.color,
      align: "center", valign: "middle", margin: 0,
    });

    slide.addText(inv.title, {
      x: actualX + 0.15, y: actualY + 0.12, w: cardW - 0.9, h: 0.32,
      fontSize: 13, fontFace: "Arial", bold: true, color: C.text,
      margin: 0,
    });
    slide.addText(inv.desc, {
      x: actualX + 0.15, y: actualY + 0.48, w: cardW - 0.3, h: cardH - 0.58,
      fontSize: 9.5, fontFace: "Arial", color: C.textSec,
      margin: 0, lineSpacingMultiple: 1.3,
    });
  });
}

// ──────────────────────────────────────────────
// Slide 9: 预期效果
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  addPageTitle(slide, "预期效果", "可量化的交付指标");

  // Big stat callouts - top row (4 items)
  const stats = [
    { value: "15-45s",   label: "5题出题速度\n纯本地CPU推理",           color: C.primary },
    { value: "~250MB",   label: "端侧模型体积\nHQQ 4-bit 量化",        color: C.teal },
    { value: "~500MB",   label: "运行时内存\n中端机型流畅运行",        color: C.amber },
    { value: "100%",     label: "出题成功率\n四层 Fallback 保障",       color: C.green },
  ];

  const statW = 2.1;
  const statStartX = 0.5;
  const statGap = 0.2;
  const statY = 1.45;

  stats.forEach((s, i) => {
    const x = statStartX + i * (statW + statGap);

    addCard(slide, x, statY, statW, 1.5, s.color);

    // Big number
    slide.addText(s.value, {
      x, y: statY + 0.12, w: statW, h: 0.6,
      fontSize: 28, fontFace: "Arial", bold: true, color: s.color,
      align: "center", valign: "middle", margin: 0,
    });
    // Label
    slide.addText(s.label, {
      x, y: statY + 0.78, w: statW, h: 0.55,
      fontSize: 9.5, fontFace: "Arial", color: C.textSec,
      align: "center", valign: "top", margin: 0, lineSpacingMultiple: 1.3,
    });
  });

  // Bottom row: experience loop & comparison
  // Experience loop
  const loopY = 3.35;
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.5, y: loopY, w: 4.35, h: 1.85,
    fill: { color: C.cardBg },
    line: { color: C.cardBorder, width: 0.75 },
    shadow: makeShadow(),
  });
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.5, y: loopY, w: 4.35, h: 0.04,
    fill: { color: C.purple },
  });
  slide.addText("全流程闭环", {
    x: 0.7, y: loopY + 0.15, w: 3.95, h: 0.3,
    fontSize: 14, fontFace: "Arial", bold: true, color: C.purple,
    margin: 0,
  });
  slide.addText([
    { text: "材料 → 出题 → 做题 → 反馈 → 题集 → 错题重刷 → 掌握", options: { breakLine: true } },
    { text: "", options: { breakLine: true } },
    { text: "· 材料不出手机，隐私有保障", options: { breakLine: true } },
    { text: "· 离线运行，无需网络 / API Key", options: { breakLine: true } },
    { text: "· AI 标签自动归类历史题目" },
  ], {
    x: 0.7, y: loopY + 0.5, w: 3.95, h: 1.2,
    fontSize: 10.5, fontFace: "Arial", color: C.textSec,
    margin: 0, lineSpacingMultiple: 1.25,
  });

  // Multi-platform
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 5.15, y: loopY, w: 4.35, h: 1.85,
    fill: { color: C.cardBg },
    line: { color: C.cardBorder, width: 0.75 },
    shadow: makeShadow(),
  });
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 5.15, y: loopY, w: 4.35, h: 0.04,
    fill: { color: C.primary },
  });
  slide.addText("多端覆盖", {
    x: 5.35, y: loopY + 0.15, w: 3.95, h: 0.3,
    fontSize: 14, fontFace: "Arial", bold: true, color: C.primary,
    margin: 0,
  });
  slide.addText([
    { text: "H5 浏览器：开发调试 · 快速体验", options: { breakLine: true } },
    { text: "", options: { breakLine: true } },
    { text: "微信小程序：社交分发 · 轻量入口", options: { breakLine: true } },
    { text: "", options: { breakLine: true } },
    { text: "Android App：离线推理 · 完整体验", options: { breakLine: true } },
    { text: "", options: { breakLine: true } },
    { text: "一套代码库 · 多端共享 · 统一维护" },
  ], {
    x: 5.35, y: loopY + 0.5, w: 3.95, h: 1.2,
    fontSize: 10.5, fontFace: "Arial", color: C.textSec,
    margin: 0, lineSpacingMultiple: 1.25,
  });
}

// ──────────────────────────────────────────────
// Slide 10: 总结
// ──────────────────────────────────────────────
{
  const slide = pres.addSlide();
  slide.background = { color: C.bg };

  // Decorative shapes
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0, y: 3.5, w: 5, h: 2.125,
    fill: { color: C.teal, transparency: 90 },
  });
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 6, y: 0, w: 4, h: 3.0,
    fill: { color: C.primary, transparency: 88 },
  });

  // Main message
  slide.addText("把 AI 出题的能力装进口袋", {
    x: 0.8, y: 1.0, w: 8.4, h: 0.8,
    fontSize: 36, fontFace: "Arial", bold: true, color: C.text,
    align: "left", margin: 0,
  });

  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 1.9, w: 1.8, h: 0.04,
    fill: { color: C.primary },
  });

  slide.addText("没有网络，照样出题", {
    x: 0.8, y: 2.1, w: 8.4, h: 0.5,
    fontSize: 20, fontFace: "Arial", color: C.textSec,
    align: "left", margin: 0,
  });

  // Three pillars
  const pillars = [
    { title: "技术",  desc: "MNN + Qwen2.5-0.5B\nHQQ 4-bit 量化\n纯 CPU 推理" },
    { title: "体验",  desc: "15-45秒出5题\n离线可用无门槛\n三层容错保障" },
    { title: "价值",  desc: "面试/考试/培训/自学\n全场景覆盖\n隐私零风险" },
  ];

  pillars.forEach((p, i) => {
    const x = 0.8 + i * 3.0;

    slide.addShape(pres.shapes.RECTANGLE, {
      x, y: 2.9, w: 2.6, h: 1.5,
      fill: { color: C.cardBg },
      line: { color: C.cardBorder, width: 0.75 },
      shadow: makeShadow(),
    });

    slide.addText(p.title, {
      x: x + 0.15, y: 2.98, w: 2.3, h: 0.3,
      fontSize: 15, fontFace: "Arial", bold: true, color: C.primary,
      margin: 0, align: "center",
    });
    slide.addText(p.desc, {
      x: x + 0.15, y: 3.35, w: 2.3, h: 0.9,
      fontSize: 11, fontFace: "Arial", color: C.textSec,
      margin: 0, align: "center", lineSpacingMultiple: 1.3,
    });
  });

  // Bottom
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0, y: 5.55, w: 10, h: 0.075,
    fill: { color: C.primary },
  });

  slide.addText("纯端侧 · 零网络 · 离线可用 · 隐私安全", {
    x: 0.8, y: 4.85, w: 8.4, h: 0.35,
    fontSize: 12, fontFace: "Arial", color: C.textTer,
    align: "center", margin: 0,
  });
}

// ── Output ──
const outPath = "d:/桌面/AGithub/ai-practice-aliyun/ppt/AI端侧出题系统.pptx";
pres.writeFile({ fileName: outPath }).then(() => {
  console.log("PPT generated: " + outPath);
}).catch(err => {
  console.error("Error:", err);
});
