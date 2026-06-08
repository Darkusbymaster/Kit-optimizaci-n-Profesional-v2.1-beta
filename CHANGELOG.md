# Changelog

Todos los cambios notables en este proyecto se documentarán en este archivo.

## [2.2.1] - 2026-06-08 (Estable - Correciones Críticas)

### 🔧 Correcciones Importantes
- **Validación mejorada de entrada** - Protege contra caracteres no numéricos
- **Timeouts agregados** - Después de cada herramienta (2 segundos)
- **Manejo seguro de errores** - Redirección correcta de stderr (2>nul)
- **Caracteres especiales removidos** - Eliminadas tildes problemáticas en menú
- **Cierre seguro garantizado** - Endlocal y exit /b 0 al final
- **Flujo de menú mejorado** - Regresa correctamente al menú principal
- **Respuesta mejorada** - Timeouts después de operaciones completadas

### ✅ Funcionalidad Verificada
- ✅ Sin fallos de cierre del programa
- ✅ Menú vuelve correctamente después de cada operación
- ✅ Validación robusta de opciones
- ✅ Tratamiento de errores silencioso
- ✅ Cierre seguro en exit_program

### 📦 Cambios Técnicos
- Agregados `timeout /t 2 /nobreak` después de cada herramienta
- Redirección mejorada: `2>nul` en comandos problemáticos
- Validación de entrada: Protege contra valores no numéricos
- Mejora en el tratamiento de shutdown y restart
- Redirección correcta de salida en WMIC y CHKDSK

### 🐛 Fallos Corregidos
- Programa no se cerraba correctamente en versión anterior
- Menú no regresaba después de algunas herramientas
- Caracteres especiales causaban problemas en visualización
- Comandos provocaban errores innecesarios
- Validación insuficiente de entrada de usuario

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

## [2.1] - 2026-06-07 (Beta)

### ✨ Características Nuevas
- Sistema completo de logging con timestamps
- Funciones reutilizables para mejor mantenibilidad
- 8 fases de optimización
- Detección inteligente de planes de energía
- Opción interactiva de reinicio
- Manejo robusto de errores
- Interfaz visual mejorada con colores
- Caché TCP/IP optimizado
- Limpieza de archivos temporales
- Papelera de reciclaje integrada
- Herramienta de restauración incluida

## [2.0] - 2026-06-07

### ✨ Características Iniciales
- Sistema de logging con timestamps
- 8 fases de optimización
- Detección inteligente de planes de energía
- Manejo robusto de errores

## [1.0] - Versión Original

### Características Básicas
- Respaldo de configuración original
- Activación del plan de energía
- Exportación de planes de energía
- Exportación de BCD backup

---

## Roadmap Futuro

### v2.3 (Planeado)
- [ ] Perfiles de optimización personalizables
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
