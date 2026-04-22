<h1>Apple Frameworks</h1>

<p>
Apple Frameworks is a SwiftUI-based exploration project focused on building a clean and structured UI 
while working with navigation, state management, and basic architectural patterns.
</p>

<h2>Overview</h2>

<p>
This project focuses on implementing core SwiftUI concepts such as navigation, 
state-driven UI updates, and reusable components using a simple MVVM structure.
</p>

<h2>Notes</h2>

<p>
Supplementary learning notes and breakdowns can be added here if needed.
</p>

## Screenshots

<p align="center">
  <img src="https://github.com/zeeshan2k2/Apple-Frameworks/blob/main/screenshots/main-grid.png" width="250" height="500">
  <img src="https://github.com/zeeshan2k2/Apple-Frameworks/blob/main/screenshots/second-grid.png" width="250" height="500">
  <img src="https://github.com/zeeshan2k2/Apple-Frameworks/blob/main/screenshots/main-list.png" width="250" height="500">
  <img src="https://github.com/zeeshan2k2/Apple-Frameworks/blob/main/screenshots/second-list.png" width="250" height="500">
</p>

<h2>Focus Areas</h2>

<ul>
  <li>SwiftUI grid layout using LazyVGrid</li>
  <li>Navigation using NavigationStack</li>
  <li>State-driven UI updates using ObservableObject and @Published</li>
  <li>Sheet presentation and view coordination</li>
  <li>Separation of concerns using MVVM</li>
  <li>Integration with UIKit (SafariServices)</li>
</ul>

<h2>Approach</h2>

<p>
The project is structured around clear separation between views, view models, and models. 
Each screen is built as an isolated component with predictable data flow and minimal side effects.
</p>

<h2>Goal</h2>

<p>
To build a solid understanding of how to structure SwiftUI applications in a scalable and maintainable way, 
while reinforcing core architectural patterns used in production iOS apps.
</p>

<h2>Key Principle</h2>

<pre>
UI = f(state)

state change
→ body recomputation
→ new view hierarchy
→ diffing
→ minimal updates
</pre>

<h2>Disclaimer</h2>

<p>
This repository is intended for learning and architectural practice. 
It is not meant to represent a complete production-ready application.
</p>
