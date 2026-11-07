.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags; = null

.field public static final blacklist FLAG_ABORT_SLOW_MULTI_PRESS:Ljava/lang/String; = "com.android.hardware.input.abort_slow_multi_press"

.field public static final blacklist FLAG_CAN_WINDOW_OVERRIDE_POWER_GESTURE_API:Ljava/lang/String; = "com.android.hardware.input.can_window_override_power_gesture_api"

.field public static final blacklist FLAG_ENABLE_BACKUP_AND_RESTORE_FOR_INPUT_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_backup_and_restore_for_input_gestures"

.field public static final blacklist FLAG_ENABLE_CUSTOMIZABLE_INPUT_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_customizable_input_gestures"

.field public static final blacklist FLAG_ENABLE_DISPLAY_COLOR_INVERSION_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_display_color_inversion_key_gestures"

.field public static final blacklist FLAG_ENABLE_NEW_25Q2_KEYCODES:Ljava/lang/String; = "com.android.hardware.input.enable_new_25q2_keycodes"

.field public static final blacklist FLAG_ENABLE_TALKBACK_AND_MAGNIFIER_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_talkback_and_magnifier_key_gestures"

.field public static final blacklist FLAG_ENABLE_VOICE_ACCESS_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_voice_access_key_gestures"

.field public static final blacklist FLAG_FIX_SEARCH_MODIFIER_FALLBACKS:Ljava/lang/String; = "com.android.hardware.input.fix_search_modifier_fallbacks"

.field public static final blacklist FLAG_INPUT_MANAGER_LIFECYCLE_SUPPORT:Ljava/lang/String; = "com.android.hardware.input.input_manager_lifecycle_support"

.field public static final blacklist FLAG_KEYBOARD_A11Y_MOUSE_KEYS:Ljava/lang/String; = "com.android.hardware.input.keyboard_a11y_mouse_keys"

.field public static final blacklist FLAG_KEYBOARD_A11Y_SHORTCUT_CONTROL:Ljava/lang/String; = "com.android.hardware.input.keyboard_a11y_shortcut_control"

.field public static final blacklist FLAG_KEYBOARD_GLYPH_MAP:Ljava/lang/String; = "com.android.hardware.input.keyboard_glyph_map"

.field public static final blacklist FLAG_KEYBOARD_REPEAT_KEYS:Ljava/lang/String; = "com.android.hardware.input.keyboard_repeat_keys"

.field public static final blacklist FLAG_KEY_EVENT_ACTIVITY_DETECTION:Ljava/lang/String; = "com.android.hardware.input.key_event_activity_detection"

.field public static final blacklist FLAG_MANAGE_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.manage_key_gestures"

.field public static final blacklist FLAG_MODIFIER_SHORTCUT_DUMP:Ljava/lang/String; = "com.android.hardware.input.modifier_shortcut_dump"

.field public static final blacklist FLAG_MODIFIER_SHORTCUT_MANAGER_REFACTOR:Ljava/lang/String; = "com.android.hardware.input.modifier_shortcut_manager_refactor"

.field public static final blacklist FLAG_MOUSE_REVERSE_VERTICAL_SCROLLING:Ljava/lang/String; = "com.android.hardware.input.mouse_reverse_vertical_scrolling"

.field public static final blacklist FLAG_MOUSE_SCROLLING_ACCELERATION:Ljava/lang/String; = "com.android.hardware.input.mouse_scrolling_acceleration"

.field public static final blacklist FLAG_MOUSE_SWAP_PRIMARY_BUTTON:Ljava/lang/String; = "com.android.hardware.input.mouse_swap_primary_button"

.field public static final blacklist FLAG_OVERRIDE_POWER_KEY_BEHAVIOR_IN_FOCUSED_WINDOW:Ljava/lang/String; = "com.android.hardware.input.override_power_key_behavior_in_focused_window"

.field public static final blacklist FLAG_POINTER_ACCELERATION:Ljava/lang/String; = "com.android.hardware.input.pointer_acceleration"

.field public static final blacklist FLAG_REMOVE_FALLBACK_MODIFIERS:Ljava/lang/String; = "com.android.hardware.input.remove_fallback_modifiers"

.field public static final blacklist FLAG_REQUEST_KEY_CAPTURE_API:Ljava/lang/String; = "com.android.hardware.input.request_key_capture_api"

.field public static final blacklist FLAG_TOUCHPAD_SYSTEM_GESTURE_DISABLE:Ljava/lang/String; = "com.android.hardware.input.touchpad_system_gesture_disable"

.field public static final blacklist FLAG_TOUCHPAD_THREE_FINGER_TAP_SHORTCUT:Ljava/lang/String; = "com.android.hardware.input.touchpad_three_finger_tap_shortcut"

.field public static final blacklist FLAG_TOUCHPAD_VISUALIZER:Ljava/lang/String; = "com.android.hardware.input.touchpad_visualizer"

.field public static final blacklist FLAG_USE_KEY_GESTURE_EVENT_HANDLER:Ljava/lang/String; = "com.android.hardware.input.use_key_gesture_event_handler"

.field public static final blacklist FLAG_USE_KEY_GESTURE_EVENT_HANDLER_MULTI_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.use_key_gesture_event_handler_multi_key_gestures"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 278
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist abortSlowMultiPress()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->abortSlowMultiPress()Z

    move-result v0

    return v0
.end method

.method public static blacklist canWindowOverridePowerGestureApi()Z
    .registers 1

    .line 79
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->canWindowOverridePowerGestureApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableBackupAndRestoreForInputGestures()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableBackupAndRestoreForInputGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableCustomizableInputGestures()Z
    .registers 1

    .line 93
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableCustomizableInputGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDisplayColorInversionKeyGestures()Z
    .registers 1

    .line 100
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableDisplayColorInversionKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableNew25q2Keycodes()Z
    .registers 1

    .line 107
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableNew25q2Keycodes()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableTalkbackAndMagnifierKeyGestures()Z
    .registers 1

    .line 114
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableTalkbackAndMagnifierKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableVoiceAccessKeyGestures()Z
    .registers 1

    .line 121
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableVoiceAccessKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixSearchModifierFallbacks()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->fixSearchModifierFallbacks()Z

    move-result v0

    return v0
.end method

.method public static blacklist inputManagerLifecycleSupport()Z
    .registers 1

    .line 135
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->inputManagerLifecycleSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyEventActivityDetection()Z
    .registers 1

    .line 142
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyEventActivityDetection()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardA11yMouseKeys()Z
    .registers 1

    .line 149
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardA11yMouseKeys()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardA11yShortcutControl()Z
    .registers 1

    .line 156
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardA11yShortcutControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardGlyphMap()Z
    .registers 1

    .line 163
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardGlyphMap()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardRepeatKeys()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardRepeatKeys()Z

    move-result v0

    return v0
.end method

.method public static blacklist manageKeyGestures()Z
    .registers 1

    .line 177
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->manageKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist modifierShortcutDump()Z
    .registers 1

    .line 184
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->modifierShortcutDump()Z

    move-result v0

    return v0
.end method

.method public static blacklist modifierShortcutManagerRefactor()Z
    .registers 1

    .line 191
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->modifierShortcutManagerRefactor()Z

    move-result v0

    return v0
.end method

.method public static blacklist mouseReverseVerticalScrolling()Z
    .registers 1

    .line 198
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->mouseReverseVerticalScrolling()Z

    move-result v0

    return v0
.end method

.method public static blacklist mouseScrollingAcceleration()Z
    .registers 1

    .line 205
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->mouseScrollingAcceleration()Z

    move-result v0

    return v0
.end method

.method public static blacklist mouseSwapPrimaryButton()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->mouseSwapPrimaryButton()Z

    move-result v0

    return v0
.end method

.method public static blacklist overridePowerKeyBehaviorInFocusedWindow()Z
    .registers 1

    .line 219
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->overridePowerKeyBehaviorInFocusedWindow()Z

    move-result v0

    return v0
.end method

.method public static blacklist pointerAcceleration()Z
    .registers 1

    .line 226
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->pointerAcceleration()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeFallbackModifiers()Z
    .registers 1

    .line 233
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->removeFallbackModifiers()Z

    move-result v0

    return v0
.end method

.method public static blacklist requestKeyCaptureApi()Z
    .registers 1

    .line 240
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->requestKeyCaptureApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist touchpadSystemGestureDisable()Z
    .registers 1

    .line 247
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->touchpadSystemGestureDisable()Z

    move-result v0

    return v0
.end method

.method public static blacklist touchpadThreeFingerTapShortcut()Z
    .registers 1

    .line 254
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->touchpadThreeFingerTapShortcut()Z

    move-result v0

    return v0
.end method

.method public static blacklist touchpadVisualizer()Z
    .registers 1

    .line 261
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->touchpadVisualizer()Z

    move-result v0

    return v0
.end method

.method public static blacklist useKeyGestureEventHandler()Z
    .registers 1

    .line 268
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->useKeyGestureEventHandler()Z

    move-result v0

    return v0
.end method

.method public static blacklist useKeyGestureEventHandlerMultiKeyGestures()Z
    .registers 1

    .line 275
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->useKeyGestureEventHandlerMultiKeyGestures()Z

    move-result v0

    return v0
.end method
