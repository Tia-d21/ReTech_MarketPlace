# Re-Tech - E-Waste Marketplace

## Overview
Re-Tech is a Flutter-based e-waste marketplace prototype designed for hackathon demonstrations. The app simulates buyer and seller flows in an eco-friendly recycling marketplace without backend functionality.

## Project Status
- **Last Updated**: November 4, 2025
- **Current State**: Fully functional prototype with complete UI/UX flows
- **Deployment**: Running on Replit as a Flutter web application

## Project Architecture

### Technology Stack
- **Frontend**: Flutter 3.24.5 (Dart 3.5.4)
- **Deployment**: Flutter Web (compiled to static HTML/CSS/JS)
- **Server**: Python 3 HTTP server (serves static files on port 5000)

### File Structure
```
/
├── lib/
│   ├── models/
│   │   └── device_model.dart       # Device data model and mock data store
│   └── screens/
│       ├── login_screen.dart        # Home screen with user type selection
│       ├── seller_screen.dart       # Seller dashboard with device list
│       ├── add_device_screen.dart   # Device upload form
│       ├── buyer_screen.dart        # Buyer marketplace view
│       └── device_detail_screen.dart # Device details and seller connection
├── main.dart                         # App entry point
├── web/                              # Web-specific assets
├── build/web/                        # Compiled Flutter web output
├── pubspec.yaml                      # Flutter dependencies
└── server.py                         # Simple HTTP server for deployment
```

## Features

### ✅ Implemented Features

1. **User Type Selection**
   - Login as Seller
   - Login as Buyer
   - Eco-friendly gradient UI with recycling theme

2. **Seller Flow**
   - Dashboard showing all listed devices
   - Add Device button with FAB
   - Device list with cards showing:
     - Device image (placeholder)
     - Name, condition, price
     - AI price insights (mock repair cost & resale value)
   - Real-time list updates after adding devices

3. **Add Device Form**
   - Mock photo upload (tap to simulate upload)
   - Device name input
   - Condition dropdown (Excellent, Good, Fair, Poor)
   - Price input with validation
   - Live AI price insights calculation:
     - Estimated repair cost: 20% of price
     - Resale value: 130% of price
   - Form validation
   - Success feedback

4. **Buyer Flow**
   - Browse all available devices
   - Device cards with key information
   - Tap to view device details
   - Smooth navigation transitions

5. **Device Details**
   - Full device information display
   - Condition indicator with color coding
   - AI price insights
   - "Connect to Seller" button
   - Success dialog when connecting

6. **UI/UX Design**
   - Modern Material Design 3
   - Eco-friendly color scheme (green/blue gradients)
   - Smooth animations and transitions
   - Responsive layouts
   - Consistent design language
   - Accessibility-friendly (color-coded conditions)

## Data Flow

### Mock Data System
- Devices stored in `DeviceData.devices` static list
- Pre-populated with 2 sample devices
- Sellers can add new devices (stored in-memory)
- Buyers see all devices from the same list
- Data persists during app session only (resets on refresh)

### State Management
- Uses StatefulWidget and setState for UI updates
- Shared data model across all screens
- Navigator for screen transitions

## User Flow

### Seller Journey
1. Login Screen → Select "Login as Seller"
2. Seller Dashboard → View listed devices or tap "Add Device"
3. Add Device Form → Fill details, upload photo (mock), submit
4. Back to Dashboard → See newly added device in list with AI insights

### Buyer Journey
1. Login Screen → Select "Login as Buyer"
2. Buyer Dashboard → Browse available devices
3. Tap Device Card → View device details
4. Device Details → Tap "Connect to Seller"
5. Success Dialog → Confirm connection established

## Design Patterns

### Color Scheme
- **Primary**: Green shades (eco-friendly theme)
- **Secondary**: Blue shades (buyer interactions)
- **Accents**: Orange/red for conditions, light gradients for backgrounds
- **Typography**: Roboto font family, Material Design 3 standards

### Condition Color Coding
- Excellent: Green
- Good: Light Green
- Fair: Orange
- Poor: Red

## Development Notes

### No Backend Features
This is a **prototype only** with:
- ❌ No real authentication
- ❌ No database persistence
- ❌ No real AI/ML integration
- ❌ No image upload/storage
- ❌ No payment processing
- ✅ Pure UI/UX demonstration

### Mock AI Insights
Price calculations use simple formulas:
- Repair cost = Price × 0.2
- Resale value = Price × 1.3

### Image Handling
- Photo upload simulated with tap gesture
- Icon placeholders used instead of real images
- "Photo Added" visual feedback provided

## Running the Project

### Local Development
```bash
./flutter/bin/flutter pub get
./flutter/bin/flutter build web --release
python3 server.py
```

### Replit Deployment
The app runs automatically via the configured workflow:
- Workflow: "Re-Tech Web Server"
- Command: `python3 server.py`
- Port: 5000 (webview enabled)

## Future Enhancements (Not Implemented)

Potential additions for full production version:
- Real authentication system
- Database integration (Firebase/PostgreSQL)
- Actual ML-based price estimation
- Real image upload and storage
- Chat system for buyer-seller communication
- Payment gateway integration
- Device filtering and search
- User profiles and ratings
- Delivery tracking
- Analytics dashboard

## Environment

### Dependencies
- Flutter SDK 3.24.5
- Dart SDK 3.5.4
- image_picker: ^1.0.4 (for mock photo selection)

### Browser Compatibility
- Chrome (recommended)
- Firefox
- Safari
- Edge
All modern browsers with WebGL support

## Credits
Built as a hackathon prototype demonstrating Flutter web capabilities and modern e-waste marketplace UX design.

---
**🌍 Reduce, Reuse, Recycle ♻️**
