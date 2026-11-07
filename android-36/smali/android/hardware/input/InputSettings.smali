.class public Landroid/hardware/input/InputSettings;
.super Ljava/lang/Object;
.source "InputSettings.java"


# static fields
.field public static final blacklist DEFAULT_BOUNCE_KEYS_THRESHOLD_MILLIS:I = 0x1f4

.field public static final blacklist DEFAULT_MAXIMUM_OBSCURING_OPACITY_FOR_TOUCH:F = 0.8f

.field public static final blacklist DEFAULT_MOUSE_SCROLLING_SPEED:I = 0x0

.field public static final blacklist DEFAULT_POINTER_SPEED:I = 0x0

.field public static final blacklist DEFAULT_SLOW_KEYS_THRESHOLD_MILLIS:I = 0x1f4

.field public static final blacklist DEFAULT_STYLUS_POINTER_ICON_ENABLED:I = 0x1

.field public static final blacklist MAX_ACCESSIBILITY_BOUNCE_KEYS_THRESHOLD_MILLIS:I = 0x1388

.field public static final blacklist MAX_ACCESSIBILITY_SLOW_KEYS_THRESHOLD_MILLIS:I = 0x1388

.field public static final blacklist MAX_KEY_REPEAT_DELAY_MILLIS:I = 0x7d0

.field public static final blacklist MAX_KEY_REPEAT_TIMEOUT_MILLIS:I = 0x7d0

.field public static final blacklist MAX_MOUSE_SCROLLING_SPEED:I = 0x7

.field public static final blacklist MAX_POINTER_SPEED:I = 0x7

.field public static final blacklist MIN_KEY_REPEAT_DELAY_MILLIS:I = 0x14

.field public static final blacklist MIN_KEY_REPEAT_TIMEOUT_MILLIS:I = 0x96

.field public static final blacklist MIN_MOUSE_SCROLLING_SPEED:I = -0x7

.field public static final blacklist MIN_POINTER_SPEED:I = -0x7


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method public static blacklist doesKeyGestureEventHandlerSupportMultiKeyGestures()Z
    .registers 1

    .line 1310
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->useKeyGestureEventHandler()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->useKeyGestureEventHandlerMultiKeyGestures()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist getAccessibilityBounceKeysThreshold(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 895
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "accessibility_bounce_keys"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist getAccessibilitySlowKeysThreshold(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 956
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "accessibility_slow_keys"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist getMaximumObscuringOpacityForTouch(Landroid/content/Context;)F
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "maximum_obscuring_opacity_for_touch"

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static blacklist getMouseScrollingSpeed(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 712
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 713
    return v1

    .line 716
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mouse_scrolling_speed"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist getPointerSpeed(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getRepeatKeysDelay(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1183
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1184
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0

    .line 1186
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1187
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    .line 1186
    const-string v2, "key_repeat_delay"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist getRepeatKeysTimeout(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1153
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1154
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0

    .line 1156
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1157
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    .line 1156
    const-string v2, "key_repeat_timeout"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist getTouchpadPointerSpeed(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "touchpad_pointer_speed"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 879
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getAccessibilityBounceKeysThreshold(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist isAccessibilityMouseKeysEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1059
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityMouseKeysFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1060
    return v1

    .line 1062
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_mouse_keys_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static blacklist isAccessibilityMouseKeysFeatureFlagEnabled()Z
    .registers 1

    .line 1042
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->keyboardA11yMouseKeys()Z

    move-result v0

    return v0
.end method

.method public static blacklist isAccessibilitySlowKeysEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 940
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getAccessibilitySlowKeysThreshold(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist isAccessibilityStickyKeysEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1004
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "accessibility_sticky_keys"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v3, 0x1

    :cond_f
    return v3
.end method

.method public static blacklist isCustomizableInputGesturesFeatureFlagEnabled()Z
    .registers 1

    .line 1301
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->useKeyGestureEventHandler()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isMousePointerAccelerationEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 835
    invoke-static {}, Landroid/hardware/input/InputSettings;->isPointerAccelerationFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 836
    return v1

    .line 839
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mouse_pointer_acceleration_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist isMouseReverseVerticalScrollingEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 757
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseReverseVerticalScrollingFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 758
    return v1

    .line 761
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mouse_reverse_vertical_scrolling"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static blacklist isMouseReverseVerticalScrollingFeatureFlagEnabled()Z
    .registers 1

    .line 457
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->mouseReverseVerticalScrolling()Z

    move-result v0

    return v0
.end method

.method public static blacklist isMouseScrollingAccelerationEnabled(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 671
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 672
    return v1

    .line 675
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mouse_scrolling_acceleration"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v4

    :goto_18
    return v1
.end method

.method public static blacklist isMouseScrollingAccelerationFeatureFlagEnabled()Z
    .registers 1

    .line 449
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->mouseScrollingAcceleration()Z

    move-result v0

    return v0
.end method

.method public static blacklist isMouseSwapPrimaryButtonEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 797
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseSwapPrimaryButtonFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 798
    return v1

    .line 801
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mouse_swap_primary_button"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static blacklist isMouseSwapPrimaryButtonFeatureFlagEnabled()Z
    .registers 1

    .line 465
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->mouseSwapPrimaryButton()Z

    move-result v0

    return v0
.end method

.method public static blacklist isPointerAccelerationFeatureFlagEnabled()Z
    .registers 1

    .line 474
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->pointerAcceleration()Z

    move-result v0

    return v0
.end method

.method public static blacklist isRepeatKeysEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1124
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1125
    return v1

    .line 1127
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_repeat_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist isRepeatKeysFeatureFlagEnabled()Z
    .registers 1

    .line 1104
    invoke-static {}, Lcom/android/input/flags/Flags;->keyboardRepeatKeys()Z

    move-result v0

    return v0
.end method

.method public static blacklist isStylusEverUsed(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stylus_ever_used"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static blacklist isStylusPointerIconEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 659
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/hardware/input/InputSettings;->isStylusPointerIconEnabled(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isStylusPointerIconEnabled(Landroid/content/Context;Z)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceReloadSetting"    # Z

    .line 634
    invoke-static {}, Landroid/sysprop/InputProperties;->force_enable_stylus_pointer_icon()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 636
    return v2

    .line 638
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111018e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 641
    return v1

    .line 643
    :cond_25
    const-string v0, "stylus_pointer_icon_enabled"

    if-eqz p1, :cond_36

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x3

    invoke-static {v3, v0, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_35

    move v1, v2

    :cond_35
    return v1

    .line 648
    :cond_36
    invoke-static {v0, v2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3d

    move v1, v2

    :cond_3d
    return v1
.end method

.method public static blacklist isTouchpadAccelerationEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 388
    invoke-static {}, Landroid/hardware/input/InputSettings;->isPointerAccelerationFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 389
    return v1

    .line 392
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "touchpad_acceleration_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist isTouchpadSystemGestureDisableFeatureFlagEnabled()Z
    .registers 1

    .line 422
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->touchpadSystemGestureDisable()Z

    move-result v0

    return v0
.end method

.method public static blacklist isTouchpadThreeFingerTapShortcutFeatureFlagEnabled()Z
    .registers 1

    .line 440
    invoke-static {}, Landroid/hardware/input/InputSettings;->isCustomizableInputGesturesFeatureFlagEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->touchpadThreeFingerTapShortcut()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isTouchpadVisualizerFeatureFlagEnabled()Z
    .registers 1

    .line 431
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->touchpadVisualizer()Z

    move-result v0

    return v0
.end method

.method public static blacklist setAccessibilityBounceKeysThreshold(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thresholdTimeMillis"    # I

    .line 917
    if-ltz p1, :cond_11

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_11

    .line 923
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_bounce_keys"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 926
    return-void

    .line 919
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided Bounce keys threshold should be in range [0, 5000]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setAccessibilityMouseKeysEnabled(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1083
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityMouseKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1084
    return-void

    .line 1086
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1087
    nop

    .line 1086
    const-string v1, "accessibility_mouse_keys_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1089
    return-void
.end method

.method public static blacklist setAccessibilitySlowKeysThreshold(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thresholdTimeMillis"    # I

    .line 978
    if-ltz p1, :cond_11

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_11

    .line 984
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_slow_keys"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 987
    return-void

    .line 980
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided Slow keys threshold should be in range [0, 5000]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setAccessibilityStickyKeysEnabled(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1025
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1026
    nop

    .line 1025
    const-string v1, "accessibility_sticky_keys"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1028
    return-void
.end method

.method public static blacklist setMaximumObscuringOpacityForTouch(Landroid/content/Context;F)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opacity"    # F

    .line 247
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_15

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_15

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "maximum_obscuring_opacity_for_touch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 253
    return-void

    .line 248
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum obscuring opacity for touch should be >= 0 and <= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setMouseAccelerationEnabled(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 859
    invoke-static {}, Landroid/hardware/input/InputSettings;->isPointerAccelerationFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 860
    return-void

    .line 862
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 863
    nop

    .line 862
    const-string v1, "mouse_pointer_acceleration_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 865
    return-void
.end method

.method public static blacklist setMouseReverseVerticalScrolling(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reverseScrolling"    # Z

    .line 777
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseReverseVerticalScrollingFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 778
    return-void

    .line 781
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 782
    nop

    .line 781
    const-string v1, "mouse_reverse_vertical_scrolling"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 784
    return-void
.end method

.method public static blacklist setMouseScrollingAcceleration(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scrollingAcceleration"    # Z

    .line 690
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 691
    return-void

    .line 694
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 695
    nop

    .line 694
    const-string v1, "mouse_scrolling_acceleration"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 697
    return-void
.end method

.method public static blacklist setMouseScrollingSpeed(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "speed"    # I

    .line 735
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 736
    return-void

    .line 739
    :cond_7
    const/4 v0, -0x7

    if-lt p1, v0, :cond_18

    const/4 v0, 0x7

    if-gt p1, v0, :cond_18

    .line 743
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_scrolling_speed"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 745
    return-void

    .line 740
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setMouseSwapPrimaryButton(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "swapPrimaryButton"    # Z

    .line 818
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseSwapPrimaryButtonFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 819
    return-void

    .line 822
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 823
    nop

    .line 822
    const-string v1, "mouse_swap_primary_button"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 825
    return-void
.end method

.method public static blacklist setPointerSpeed(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "speed"    # I

    .line 189
    const/4 v0, -0x7

    if-lt p1, v0, :cond_10

    const/4 v0, 0x7

    if-gt p1, v0, :cond_10

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    return-void

    .line 190
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setRepeatKeysDelay(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayTimeMillis"    # I

    .line 1274
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1275
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isRepeatKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1276
    return-void

    .line 1278
    :cond_d
    const/16 v0, 0x14

    if-lt p1, v0, :cond_20

    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_20

    .line 1285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_repeat_delay"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1288
    return-void

    .line 1280
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided repeat keys delay should be in range (20,2000)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setRepeatKeysEnabled(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1208
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1209
    return-void

    .line 1211
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1212
    nop

    .line 1211
    const-string v1, "key_repeat_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1213
    return-void
.end method

.method public static blacklist setRepeatKeysTimeout(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeoutTimeMillis"    # I

    .line 1237
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1238
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isRepeatKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1239
    return-void

    .line 1241
    :cond_d
    const/16 v0, 0x96

    if-lt p1, v0, :cond_20

    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_20

    .line 1248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_repeat_timeout"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1251
    return-void

    .line 1243
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided repeat keys timeout should be in range (150,2000)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setStylusEverUsed(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stylusEverUsed"    # Z

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 272
    nop

    .line 271
    const-string v1, "stylus_ever_used"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    return-void
.end method

.method public static blacklist setTouchpadAccelerationEnabled(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 408
    invoke-static {}, Landroid/hardware/input/InputSettings;->isPointerAccelerationFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 409
    return-void

    .line 411
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 412
    nop

    .line 411
    const-string v1, "touchpad_acceleration_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 414
    return-void
.end method

.method public static blacklist setTouchpadNaturalScrolling(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 344
    nop

    .line 343
    const-string v1, "touchpad_natural_scrolling"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 346
    return-void
.end method

.method public static blacklist setTouchpadPointerSpeed(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "speed"    # I

    .line 306
    const/4 v0, -0x7

    if-lt p1, v0, :cond_11

    const/4 v0, 0x7

    if-gt p1, v0, :cond_11

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touchpad_pointer_speed"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 312
    return-void

    .line 307
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setTouchpadRightClickZone(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 570
    nop

    .line 569
    const-string v1, "touchpad_right_click_zone"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 572
    return-void
.end method

.method public static blacklist setTouchpadSystemGesturesEnabled(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 620
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadSystemGestureDisableFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 621
    return-void

    .line 623
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 624
    nop

    .line 623
    const-string v1, "touchpad_system_gestures"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 625
    return-void
.end method

.method public static blacklist setTouchpadTapDragging(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 537
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 538
    nop

    .line 537
    const-string v1, "touchpad_tap_dragging"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 540
    return-void
.end method

.method public static blacklist setTouchpadTapToClick(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    nop

    .line 375
    const-string v1, "touchpad_tap_to_click"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 378
    return-void
.end method

.method public static blacklist setTouchpadVisualizer(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 503
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadVisualizerFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 504
    return-void

    .line 506
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 507
    nop

    .line 506
    const-string v1, "touchpad_visualizer"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 508
    return-void
.end method

.method public static blacklist useTouchpadNaturalScrolling(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "touchpad_natural_scrolling"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    return v3
.end method

.method public static blacklist useTouchpadRightClickZone(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "touchpad_right_click_zone"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    move v3, v1

    :cond_10
    return v3
.end method

.method public static blacklist useTouchpadSystemGestures(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 603
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadSystemGestureDisableFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 604
    return v1

    .line 606
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "touchpad_system_gestures"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist useTouchpadTapDragging(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 521
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "touchpad_tap_dragging"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    move v3, v1

    :cond_10
    return v3
.end method

.method public static blacklist useTouchpadTapToClick(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "touchpad_tap_to_click"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    return v3
.end method

.method public static blacklist useTouchpadThreeFingerTapShortcut(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "touchpad_three_finger_tap_customization"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 589
    .local v0, "customizedShortcut":I
    if-eqz v0, :cond_16

    .line 590
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadThreeFingerTapShortcutFeatureFlagEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    nop

    .line 589
    :goto_17
    return v3
.end method

.method public static blacklist useTouchpadVisualizer(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 486
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadVisualizerFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 487
    return v1

    .line 489
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "touchpad_visualizer"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    move v1, v2

    :cond_17
    return v1
.end method
