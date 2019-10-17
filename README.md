## Dessert

### Descripción:

App Mocky de gestión de ingredientes de pastel

### Summary:

Ejercicio app iOS Mocky de toppings de acuerdo a lineamientos propuestos

### Architect:

Pattern MVVM

* Model
** Mocky *Batter *Factor [batter, topping

* View Model
** MockyViewModel *Gestor contenidos para vistas

* View
** MockyViewController *Vista tabla
** MockyTable *Extensión tabla
** FactorTableViewCell *Fila gestión topping

* Networking
** Requester *Gestor servicios

* Data
** DatamManager *Abstracción caché [base de datos local
** DiskManager *Implementación caché para pod Disk

### Pod

* Alamofire
* Disk

### Roadmap:

* Networking * Coding MVVM * Local data * Workflow topping * UI Design

### TODO:

* Editar topping 
* Offline-First
