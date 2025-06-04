<!DOCTYPE html>
<html lang="ar">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>سكربتات حرب السيوف</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Cairo&display=swap');
  body {
    font-family: 'Cairo', sans-serif;
    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
    color: #eee;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    min-height: 100vh;
    align-items: center;
  }
  .container {
    background: rgba(30, 30, 30, 0.85);
    border-radius: 12px;
    box-shadow: 0 8px 24px rgba(0,0,0,0.4);
    max-width: 450px;
    width: 100%;
    padding: 25px;
  }
  h1 {
    text-align: center;
    margin-bottom: 15px;
    color: #00e5ff;
    text-shadow: 0 0 10px #00e5ff;
  }
  ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }
  li {
    background: linear-gradient(90deg, #1f4037, #99f2c8);
    margin: 12px 0;
    padding: 12px 20px;
    border-radius: 8px;
    cursor: pointer;
    font-weight: 600;
    color: #023020;
    box-shadow: 0 0 8px #8bf2cc;
    transition: background 0.3s ease, transform 0.2s ease;
  }
  li:hover {
    background: linear-gradient(90deg, #00e5ff, #00aaff);
    color: white;
    transform: scale(1.05);
    box-shadow: 0 0 20px #00e5ff;
  }
  .footer {
    margin-top: 20px;
    font-size: 13px;
    color: #777;
    text-align: center;
  }
</style>
</head>
<body>
<div class="container">
  <h1>سكربتات حرب السيوف</h1>
  <ul id="scriptList">
    <!-- السكربتات تظهر هنا -->
  </ul>
  <div class="footer">
    اضغط على اسم السكربت لتحميله وتشغيله
  </div>
</div>

<script>
  // مصفوفة السكربتات - تقدر تضيف أكثر هنا بسهولة
  const scripts = [
    {
      name: "سكربت سرعة (Sword Script)",
      code: `loadstring(game:HttpGet("https://raw.githubusercontent.com/R7KScript/Arabic-speed/refs/heads/main/sword.Lua"))()`
    },
    {
      name: "ماب البيوت (Brooke Map)",
      code: `loadstring(game:HttpGet('https://raw.githubusercontent.com/R7KScript/Arabic-speed/refs/heads/main/Brooke.Lua'))()`
    },
    // تقدر تضيف هنا سكربتات جديدة
  ];

  const list = document.getElementById('scriptList');

  function copyToClipboard(text) {
    navigator.clipboard.writeText(text).then(() => {
      alert('تم نسخ السكربت للحافظة! الصقه في Roblox لتشغيله.');
    }, () => {
      alert('فشل النسخ، حاول مرة أخرى.');
    });
  }

  function createList() {
    scripts.forEach((script, i) => {
      const li = document.createElement('li');
      li.textContent = script.name;
      li.title = script.code;
      li.onclick = () => copyToClipboard(script.code);
      list.appendChild(li);
    });
  }

  createList();
</script>
</body>
</html>
