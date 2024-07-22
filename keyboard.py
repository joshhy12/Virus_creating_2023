import keyboard

def on_key_event(event):
    if event.event_type == keyboard.KEY_DOWN:
        print(f"Key {event.name} pressed")
    elif event.event_type == keyboard.KEY_UP:
        print(f"Key {event.name} released")
    else:
        print(f"Unknown event type for key {event.name}")
keyboard.hook(on_key_event)

print("Listening to keyboard events. Press 'q' to quit.")
keyboard.wait('q')
