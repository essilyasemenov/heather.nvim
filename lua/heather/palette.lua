-- heather.nvim - palette
-- Inspired by sweet-fusion and mountain colorschemes

local M = {}

M.colors = {
  -- ─── Backgrounds ─────────────────────────────────────────────────────────
  bg        = "#141416",   -- основной фон (чуть светлее #0F0F0F)
  bg_dark   = "#0A0A0E",   -- тёмнее с синим оттенком
  bg_light  = "#1C1C22",   -- sidebar, inactive windows
  bg_mid    = "#222230",   -- cursorline, popups (пурпурный undertone)
  bg_visual = "#2E2E42",   -- выделение (пурпурный undertone)

  -- ─── Foreground ──────────────────────────────────────────────────────────
  fg        = "#E8E8F8",   -- основной текст (лёгкий lavender tint)
  fg_dim    = "#C8C8DC",   -- приглушённый текст
  fg_bright = "#F5F5FF",   -- яркий текст
  fg_gutter = "#686880",   -- номера строк

  -- ─── Syntax ──────────────────────────────────────────────────────────────
  comment   = "#9090BC",   -- комментарии: голубовато-серый
  keyword   = "#E080E0",   -- ключевые слова: яркий magenta
  fn        = "#C8BFFF",   -- функции: холодный lavender
  string    = "#9FF5C0",   -- строки: яркий mint
  number    = "#F5CA78",   -- числа: янтарь
  operator  = "#FF9090",   -- операторы: яркий coral (=, :=, +, и т.д.)
  green     = "#7FFFD4",   -- булевы / встроенные функции: аквамарин
  blue      = "#85CFEF",   -- препроцессор, структуры, директории: небесный
  yellow    = "#F5DA80",   -- storage class, встроенные типы: золотисто-жёлтый
  orange    = "#F5B082",   -- спецсимволы, символьные константы: оранжевый

  -- ─── Pink accent (от sweet-fusion) ───────────────────────────────────────
  pink      = "#F578A2",   -- типы, скобки, теги, include, return
  pink_light = "#F8AACA",  -- светлый розовый (Type names)

  -- ─── UI / Диагностика ────────────────────────────────────────────────────
  border    = "#4A4A60",   -- рамки обычные
  border_hi = "#8AB8D8",   -- рамки подсвеченные
  hint      = "#D8B0E0",   -- подсказки, конструкторы
  error     = "#F08080",   -- ошибки
  warning   = "#E0C878",   -- предупреждения
  info      = "#C090D0",   -- информация

  -- ─── Diff ────────────────────────────────────────────────────────────────
  diff_add  = "#7FFFD4",
  diff_del  = "#F08080",
  diff_chg  = "#F5DA80",
  diff_txt  = "#85CFEF",

  none      = "NONE",
}

return M
