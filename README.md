# Kit de Rendimiento Profesional 2026 🚀

## Descripción
Script completo en Batch para optimizar el rendimiento de Windows 10/11 y acceder a herramientas del sistema. Versión unificada con 30 opciones integradas en un único menú profesional.

## ✨ Características Principales

### 🎯 Sección 1: Optimización de Rendimiento (3 opciones)
- ✅ Ejecutar optimización completa (8 fases)
- ✅ Restaurar configuración original
- ✅ Ver log de rendimiento

### 🛠️ Sección 2: Herramientas del Sistema (21 opciones)
- Mapa de Caracteres
- Símbolo del Sistema (CMD)
- Servicios de Componentes
- Administración de Equipos
- Panel de Control
- Limpieza de Disco
- Visor de Eventos
- Política de Seguridad Local
- Monitor de Rendimiento
- Gestión de Impresoras
- Editor del Registro
- Monitor de Recursos
- Cuadro Ejecutar
- Servicios
- Grabador de Pasos
- Configuración del Sistema
- Información del Sistema
- Administrador de Tareas
- Programador de Tareas
- Windows PowerShell
- Firewall de Windows Defender

### 🔧 Sección 3: Opciones Adicionales (6 opciones)
- 🧹 Limpiar archivos temporales
- 🗑️ Vaciar papelera de reciclaje
- 💾 Desfragmentar disco (C:)
- 📊 Analizar espacio en disco
- 🔨 Reparar sistema de archivos

## 🛡️ Seguridad
- 🔐 Verificación automática de permisos de administrador
- 💾 Respaldo automático de configuración original
- 📝 Logging completo con timestamps
- 🔄 Instrucciones de restauración paso a paso
- ⚠️ Manejo inteligente de errores
- ✅ Cierre seguro sin fallos

## 📋 Requisitos
- **Windows 10** (compilación 1903+) o **Windows 11**
- **Permisos de Administrador**
- **PowerShell 5.0+** (incluido en Windows 10/11)

## 🚀 Instalación y Uso

### Paso 1: Descargar
```bash
git clone https://github.com/Darkusbymaster/Kit-optimizaci-n-Profesional-v2.1-beta.git
cd Kit-optimizaci-n-Profesional-v2.1-beta
```

### Paso 2: Ejecutar
1. Click derecho sobre `Kit_Rendimiento_Herramientas_Unificado.bat`
2. Selecciona **"Ejecutar como administrador"**
3. Confirma el mensaje de UAC

### Paso 3: Seleccionar Opción
- Ingresa el número de la opción deseada (1-30)
- El programa ejecutará la función seleccionada
- Regresará automáticamente al menú

## 📊 Fases de Optimización

| Fase | Descripción |
|------|-------------|
| 1/8 | Creación de respaldos de configuración |
| 2/8 | Activación del plan Ultimate Performance |
| 3/8 | Optimización de energía |
| 4/8 | Optimización del sistema |
| 5/8 | Optimización de almacenamiento |
| 6/8 | Deshabilitación de servicios innecesarios |
| 7/8 | Optimización de juegos y gráficos |
| 8/8 | Limpieza de archivos temporales |

## 🔄 Restauración

Si necesitas restaurar la configuración original:

### Opción 1: Usar Herramienta de Restauración
```bash
RESTAURAR_CONFIGURACION.bat
```

### Opción 2: Restaurar Energía
```cmd
powercfg -import "Backup_Config_Original\energia_original.pow"
```

### Opción 3: Restaurar BCD
```cmd
bcdedit /import "Backup_Config_Original\bcd_backup.bcd"
```

### Opción 4: Restaurar Registro
1. Click derecho en `Backup_Config_Original\services_backup.reg`
2. Selecciona **"Combinar"**

## 📝 Logging

El script genera un archivo `Kit_Rendimiento_Log.txt` que contiene:
- Timestamp de cada acción
- Estado de cada operación (OK, ADVERTENCIA, ERROR, INFO)
- Información detallada para diagnosticar problemas

## 🔧 Servicios Deshabilitados

- **DiagTrack** - Rastreo de diagnósticos
- **dmwappushservice** - Servicio de push de aplicaciones
- **SysMain (Superfetch)** - Precarga de aplicaciones
- **MsSecurityScanner** - Escáner de seguridad

## ⚙️ Cambios en el Registro

### TCP/IP Parameters
```
TcpWindowSize = 65535
MaxFreeTcbs = 16000
```

### Power Settings
- Timeout de disco: 0 minutos (deshabilitado)
- Timeout de suspensión: 0 minutos (deshabilitado)
- Aceleración del procesador: 100%

## ⚠️ Advertencias Importantes

- **IMPORTANTE**: Este script modifica configuraciones críticas del sistema
- Se recomienda crear un punto de restauración antes de ejecutar
- Requiere permisos de administrador
- Algunos cambios pueden afectar la duración de la batería en laptops
- La reparación del sistema de archivos puede requerir reinicio

## 🐛 Solución de Problemas

### El script no se ejecuta
- Verifica que tengas permisos de administrador
- Comprueba que no tengas políticas de ejecución restrictivas:
  ```cmd
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

### Error "Plan Ultimate Performance no encontrado"
- El script creará uno automáticamente
- Si continúa el problema, actualiza Windows

### El sistema no inicia correctamente
- Restaura el BCD con el comando de restauración
- Si aún hay problemas, usa `bootrec /fixbcd`

### El programa se cierra sin razón
- Ejecuta como administrador
- Verifica que tengas espacio en disco
- Comprueba los permisos de carpetas

## 📈 Resultados Esperados

- ⚡ Mejor rendimiento general del sistema
- 🎮 FPS más estables en juegos
- 📊 Menor latencia en red
- 💾 Respuesta más rápida del almacenamiento
- 🔋 Mejor rendimiento en tareas pesadas

## 📄 Licencia

Este proyecto está disponible bajo la licencia MIT.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Para cambios importantes, abre un issue primero.

## 📞 Soporte

Para reportar problemas o sugerir mejoras, abre un [issue en GitHub](https://github.com/Darkusbymaster/Kit-optimizaci-n-Profesional-v2.1-beta/issues).

## 🙏 Créditos

Desarrollado por **Darkusbymaster** - 2026

---

## 📦 Archivos del Proyecto

- **Kit_Rendimiento_2026_Profesional.bat** - Script original (v2.0)
- **Kit_Rendimiento_Herramientas_Unificado.bat** - Script unificado (v2.2.1) ⭐ RECOMENDADO
- **RESTAURAR_CONFIGURACION.bat** - Herramienta de restauración
- **README.md** - Este archivo
- **CHANGELOG.md** - Historial de cambios
- **.gitignore** - Configuración de Git

---

**⭐ Si te fue útil, considera dar una estrella al repositorio**

**🚀 Versión Actual: v2.2.1 - ESTABLE Y FUNCIONAL**
