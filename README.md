# 🛰️Vehicle Tracker (ESX)

A high-performance, synchronized vehicle tracking system for FiveM. This script allows emergency services (Police, EMS, Fire) to track their fleet in real-time with an integrated **Anti-Theft Alarm system**.

## 🌟 Advanced Features
- **Smart Fleet Display:** All authorized units can see the entire service fleet on the map.
- **Anti-Theft Alarm:** - **Static Blip:** Displayed when the vehicle is empty or driven by an authorized officer.
  - **Flashing Alarm:** The blip automatically starts flashing (Blue/Black or Red/Black) if an unauthorized person (civilian/criminal) enters **any seat** of the vehicle.
- **Visual Differentiation:** - **Police (isPD):** Blue flashing blips.
  - **EMS/Fire (isEMS/isLSFD):** Red flashing blips.
- **Zero Self-Distraction:** The script automatically hides the blip of the vehicle you are currently driving, so it doesn't overlap with your GPS arrow.
- **Optimized Performance:** Uses `GetGamePool` and smart state-checking to prevent unnecessary native calls, ensuring 0.00ms - 0.01ms CPU usage.

## 🛠️ Installation

1. Download the repository.
2. Place the `car_tracker` folder into your `resources` directory.
3. Add the following to your `server.cfg`:
   ```cfg
   ensure car_tracker
