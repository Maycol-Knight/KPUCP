# 📹 Videos para K-FLOW PUCP

## Instrucciones para agregar tu video

### 📁 Ubicación
Coloca tu archivo de video en esta carpeta: `/public/videos/`

### 📊 Formatos recomendados
- **Principal**: `kflow-demo.mp4` (H.264, AAC audio)
- **Alternativo**: `kflow-demo.webm` (VP9, Opus audio)

### 🎯 Especificaciones óptimas
- **Resolución**: 1920x1080 (16:9) o 1280x720
- **Tamaño máximo**: 15MB (recomendado: 5-10MB)
- **Duración**: 30-90 segundos
- **FPS**: 30fps

### 🔧 Conversión de tu video (9.90MB)

Si necesitas optimizar tu video, puedes usar:

#### Online (Gratis):
- **CloudConvert**: https://cloudconvert.com/mp4-converter
- **Online Video Converter**: https://www.onlinevideoconverter.com

#### Configuración recomendada:
- Bitrate: 2-4 Mbps
- Audio: 128kbps AAC
- Codec: H.264

#### FFmpeg (Local):
```bash
# Optimizar para web
ffmpeg -i tu-video.mp4 -c:v libx264 -preset slow -crf 23 -c:a aac -b:a 128k kflow-demo.mp4

# Crear versión WebM (opcional)
ffmpeg -i kflow-demo.mp4 -c:v libvpx-vp9 -crf 30 -c:a libopus kflow-demo.webm
```

### 📝 Después de subir el video:

1. **Asegúrate** de que el archivo se llame `kflow-demo.mp4`
2. **Ejecuta** `npm run build` para verificar
3. **Haz commit** y push al repositorio
4. **El video se reproducirá automáticamente** con autoplay, muted y loop

### 🎨 Características actuales:
- ✅ Autoplay activado (silenciado)
- ✅ Loop infinito
- ✅ Controles de usuario disponibles
- ✅ Responsive design
- ✅ Fallback para navegadores sin soporte

¡Tu video debería funcionar perfectamente una vez subido!
