# Production Automation & Control

## Bitfocus Companion & Stream Deck

I use **Bitfocus Companion** to connect production hardware and software that ship with no way to talk to each other. The result is macro-style control over an entire production suite from a single button press.

### Integration Highlights

- **Multi-Device Control:** Synchronizing a single button press to fire a ProPresenter slide, recall an Allen & Heath scene, and trigger a lighting cue.
- **Custom Feedback:** Using Companion's feedback system to display real-time statuses (like Mute states, Battery levels, or Remaining Video Time) directly on Stream Deck buttons.
- **Streamlined Workflows:** Turning long technical sequences into single labeled buttons, so an operator tracks the service instead of the equipment.

## ProPresenter Ecosystem

- **Multi-Screen Layouts:** Configuring Stage Displays, Look-based routing, and NDI/SDI outputs for complex visual environments.
- **MIDI/OSC Control:** Automating ProPresenter from Ableton Live or Bitfocus Companion for perfect timing and synchronization.
- **Data-Driven Graphics:** Implementing ProPresenter modules to pull live data or dynamic content into presentations.

## Custom Automation

When off-the-shelf modules don't exist, I build them.
- **Python-to-OSC Bridges:** Custom scripts to translate legacy protocols into modern control formats.
- **Companion Integrations:** Custom button layouts and feedback logic that collapse multi-step technical sequences into single, labeled actions for volunteer operators.
- **Staged Rack Power-Up:** A Python service that powers the church's AV-over-IP gear (audio-network endpoints and NDI video encoders) on through the UniFi switch's PoE ports before each service, on a schedule read from the Planning Center calendar. Gear comes up in dependency order, and each stage has to link up and draw power before the next one starts. Shutdown runs in reverse, and a failed stage sends one alert rather than leaving the rack half-powered. The first live staged bring-up ran in September 2026, backed by 515 automated tests.
- **Livestream Health Watchdog:** During each service window, computed from the live Planning Center plan, a scheduled job reads the stream's health from the YouTube Data API and emails a named contact once when ingest fails and once when it recovers. It waits for several bad readings in a row before alerting, so one blip is not an incident, and outside service windows it makes no API calls at all.

---

[Back to Production Overview](overview.md)
