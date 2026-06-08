# Changelog

Todos los cambios notables en este proyecto se documentarán en este archivo.

## [2.2] - 2026-06-08 (Beta - Nueva)

### ✨ Características Nuevas
- **Script Unificado** - Fusión de Kit de Rendimiento + Menú de Herramientas
- 30 opciones integradas en un único menú
- Sistema de menú jerárquico organizado por secciones
- 24 herramientas del sistema en un solo lugar
- Herramientas adicionales de mantenimiento

### 🔧 Mejoras
- Interfaz mejorada con secciones claramente definidas
- Validación de permisos administrativos por herramienta
- Menú intuitivo con numeración clara
- Mejor organización de opciones

### 📦 Nuevas Herramientas Integradas
- **Sección 1**: Optimización de Rendimiento (3 opciones)
- **Sección 2**: Herramientas del Sistema (21 opciones)
  - Mapa de Caracteres, CMD, Servicios de Componentes
  - Administración de Equipos, Panel de Control
  - Limpieza de Disco, Visor de Eventos
  - Política de Seguridad, Monitor de Rendimiento
  - Gestión de Impresoras, Registro, Monitor de Recursos
  - Cuadro Ejecutar, Servicios, Grabador de Pasos
  - Configuración del Sistema, Info del Sistema
  - Administrador de Tareas, Programador de Tareas
  - PowerShell, Firewall
- **Sección 3**: Opciones Adicionales (6 opciones)
  - Limpieza de Temporales
  - Vaciado de Papelera
  - Desfragmentación de Disco
  - Análisis de Espacio en Disco
  - Reparación de Sistema de Archivos

### 🐛 Correcciones
- Mejor control de flujo del menú
- Validación de entrada mejorada
- Prevención de errores por opciones inválidas

### 📝 Documentación
- Script autodocumentado con comentarios claros
- Estructura modular y fácil de mantener
- Secciones identificadas claramente

## [2.1] - 2026-06-07 (Beta)

### ✨ Características Nuevas
- Sistema completo de logging con timestamps
- Funciones reutilizables para mejor mantenibilidad
- 8 fases de optimización (vs 2-3 del original)
- Detección inteligente de planes de energía
- Opción interactiva de reinicio
- Manejo robusto de errores
- Interfaz visual mejorada con colores
- Caché TCP/IP optimizado
- Limpieza de archivos temporales
- Papelera de reciclaje integrada
- Herramienta de restauración incluida

### 🔧 Mejoras
- Mejor validación de permisos administrativos
- Mensajes de error más descriptivos
- Respaldos más completos del sistema
- Instrucciones de restauración más claras
- Salida formateada y legible
- Compatibilidad expandida (Win 10/11/Server 2019+)
- Mejor documentación

### 📦 Cambios Técnicos
- Uso de `setlocal enabledelayedexpansion` para variables dinámicas
- Manejo de GUIDs de planes de energía
- Integración con WMI para detección de unidades
- Consultas de registro mejoradas
- Gestión de servicios más segura
- Logging multi-nivel

### 🐛 Correcciones
- Errores potenciales en búsqueda de planes de energía
- Restauración de BCD más robusta
- Manejo de rutas con espacios
- Detección de servicios no existentes
- Mejor manejo de permisos

### 📝 Documentación
- README.md completo con ejemplos
- CHANGELOG.md detallado
- Comentarios en el código mejorados
- Instrucciones de restauración paso a paso
- Guía de solución de problemas
- Herramienta de restauración interactiva

## [2.0] - 2026-06-07

### ✨ Características Añadidas
- Sistema completo de logging con timestamps
- Funciones reutilizables para mejor mantenibilidad
- 8 fases de optimización (vs 2-3 del original)
- Detección inteligente de planes de energía
- Opción interactiva de reinicio
- Manejo robusto de errores
- Interfaz visual mejorada con colores
- Caché TCP/IP optimizado
- Limpieza de archivos temporales
- Papelera de reciclaje integrada

### 🔧 Mejoras
- Mejor validación de permisos administrativos
- Mensajes de error más descriptivos
- Respaldos más completos del sistema
- Instrucciones de restauración más claras
- Salida formateada y legible
- Compatibilidad expandida (Win 10/11/Server 2019+)

### 📦 Cambios Técnicos
- Uso de `setlocal enabledelayedexpansion` para variables dinámicas
- Manejo de GUIDs de planes de energía
- Integración con WMI para detección de unidades
- Consultas de registro mejoradas
- Gestión de servicios más segura

### 🐛 Correcciones
- Errores potenciales en búsqueda de planes de energía
- Restauración de BCD más robusta
- Manejo de rutas con espacios
- Detección de servicios no existentes

### 📝 Documentación
- README.md completo con ejemplos
- Comentarios en el código mejorados
- Instrucciones de restauración detalladas
- Guía de solución de problemas
- Changelog de actualizaciones

## [1.0] - Versión Original

### Características Básicas
- Respaldo de configuración original
- Activación del plan de energía
- Exportación de planes de energía
- Exportación de BCD backup

---

## Roadmap Futuro

### v2.3 (Planeado)
- [ ] Perfiles de optimización personalizables (Juegos, Trabajo, Multimedia)
- [ ] Interfaz gráfica (GUI) mejorada
- [ ] Escaneo de malware integrado
- [ ] Limpieza avanzada de caché
- [ ] Más herramientas de diagnóstico

### v2.4 (Planeado)
- [ ] Optimización de GPU
- [ ] Mejora de velocidad de arranque
- [ ] Análisis detallado de recursos
- [ ] Monitoreo en tiempo real

### v3.0 (Largo Plazo)
- [ ] Versión en PowerShell
- [ ] Control remoto de sistemas
- [ ] Reportes detallados en HTML
- [ ] Integración con Task Scheduler
- [ ] Dashboard de monitoreo en tiempo real
