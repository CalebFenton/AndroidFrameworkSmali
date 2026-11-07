.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abortSlowMultiPress()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist canWindowOverridePowerGestureApi()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableBackupAndRestoreForInputGestures()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableCustomizableInputGestures()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableDisplayColorInversionKeyGestures()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableNew25q2Keycodes()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableTalkbackAndMagnifierKeyGestures()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableVoiceAccessKeyGestures()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixSearchModifierFallbacks()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist inputManagerLifecycleSupport()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keyEventActivityDetection()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keyboardA11yMouseKeys()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keyboardA11yShortcutControl()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keyboardGlyphMap()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keyboardRepeatKeys()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist manageKeyGestures()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist modifierShortcutDump()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist modifierShortcutManagerRefactor()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist mouseReverseVerticalScrolling()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mouseScrollingAcceleration()Z
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mouseSwapPrimaryButton()Z
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist overridePowerKeyBehaviorInFocusedWindow()Z
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pointerAcceleration()Z
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeFallbackModifiers()Z
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestKeyCaptureApi()Z
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist touchpadSystemGestureDisable()Z
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist touchpadThreeFingerTapShortcut()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist touchpadVisualizer()Z
    .registers 2

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useKeyGestureEventHandler()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useKeyGestureEventHandlerMultiKeyGestures()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method
