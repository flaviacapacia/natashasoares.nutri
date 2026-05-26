$origem = "C:\Users\Lenovo\Downloads"
$destino = "C:\Users\Lenovo\Documents\Codex\2026-05-26\preciso-criar-4-arquivos-html-e\img"

New-Item -ItemType Directory -Path $destino -Force | Out-Null

$mapa = @{
  "WhatsApp Image 2026-05-26 at 09.26.43 (1).jpeg" = "logo-natasha.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.44.jpeg" = "sobre-natasha.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.39.jpeg" = "contato-foto.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.45.jpeg" = "produto-01.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.43.jpeg" = "produto-02.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.42.jpeg" = "produto-03.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.40 (2).jpeg" = "produto-04.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.40.jpeg" = "produto-05.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.39 (2).jpeg" = "produto-06.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.39 (1).jpeg" = "produto-07.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.39.jpeg" = "produto-08.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.41.jpeg" = "blog-01.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.40 (1).jpeg" = "blog-02.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.38.jpeg" = "blog-03.jpeg"
  "WhatsApp Image 2026-05-26 at 09.26.43.jpeg" = "blog-04.jpeg"
}

foreach ($arquivo in $mapa.Keys) {
  $origemArquivo = Join-Path $origem $arquivo
  $destinoArquivo = Join-Path $destino $mapa[$arquivo]
  Copy-Item -LiteralPath $origemArquivo -Destination $destinoArquivo -Force
}

Write-Host "Imagens copiadas para a pasta img com sucesso."
