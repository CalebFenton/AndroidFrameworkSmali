.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v1, Ljava/util/HashSet;

    const-string v31, "com.android.hardware.input.use_key_gesture_event_handler_multi_key_gestures"

    const-string v32, ""

    const-string v2, "com.android.hardware.input.abort_slow_multi_press"

    const-string v3, "com.android.hardware.input.can_window_override_power_gesture_api"

    const-string v4, "com.android.hardware.input.enable_backup_and_restore_for_input_gestures"

    const-string v5, "com.android.hardware.input.enable_customizable_input_gestures"

    const-string v6, "com.android.hardware.input.enable_display_color_inversion_key_gestures"

    const-string v7, "com.android.hardware.input.enable_new_25q2_keycodes"

    const-string v8, "com.android.hardware.input.enable_talkback_and_magnifier_key_gestures"

    const-string v9, "com.android.hardware.input.enable_voice_access_key_gestures"

    const-string v10, "com.android.hardware.input.fix_search_modifier_fallbacks"

    const-string v11, "com.android.hardware.input.input_manager_lifecycle_support"

    const-string v12, "com.android.hardware.input.key_event_activity_detection"

    const-string v13, "com.android.hardware.input.keyboard_a11y_mouse_keys"

    const-string v14, "com.android.hardware.input.keyboard_a11y_shortcut_control"

    const-string v15, "com.android.hardware.input.keyboard_glyph_map"

    const-string v16, "com.android.hardware.input.keyboard_repeat_keys"

    const-string v17, "com.android.hardware.input.manage_key_gestures"

    const-string v18, "com.android.hardware.input.modifier_shortcut_dump"

    const-string v19, "com.android.hardware.input.modifier_shortcut_manager_refactor"

    const-string v20, "com.android.hardware.input.mouse_reverse_vertical_scrolling"

    const-string v21, "com.android.hardware.input.mouse_scrolling_acceleration"

    const-string v22, "com.android.hardware.input.mouse_swap_primary_button"

    const-string v23, "com.android.hardware.input.override_power_key_behavior_in_focused_window"

    const-string v24, "com.android.hardware.input.pointer_acceleration"

    const-string v25, "com.android.hardware.input.remove_fallback_modifiers"

    const-string v26, "com.android.hardware.input.request_key_capture_api"

    const-string v27, "com.android.hardware.input.touchpad_system_gesture_disable"

    const-string v28, "com.android.hardware.input.touchpad_three_finger_tap_shortcut"

    const-string v29, "com.android.hardware.input.touchpad_visualizer"

    const-string v30, "com.android.hardware.input.use_key_gesture_event_handler"

    filled-new-array/range {v2 .. v32}, [Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 239
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist abortSlowMultiPress()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.hardware.input.abort_slow_multi_press"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist canWindowOverridePowerGestureApi()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.hardware.input.can_window_override_power_gesture_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBackupAndRestoreForInputGestures()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.hardware.input.enable_backup_and_restore_for_input_gestures"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCustomizableInputGestures()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.hardware.input.enable_customizable_input_gestures"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayColorInversionKeyGestures()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.hardware.input.enable_display_color_inversion_key_gestures"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNew25q2Keycodes()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.hardware.input.enable_new_25q2_keycodes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTalkbackAndMagnifierKeyGestures()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.hardware.input.enable_talkback_and_magnifier_key_gestures"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableVoiceAccessKeyGestures()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.hardware.input.enable_voice_access_key_gestures"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixSearchModifierFallbacks()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.hardware.input.fix_search_modifier_fallbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    const-string v29, "com.android.hardware.input.use_key_gesture_event_handler"

    const-string v30, "com.android.hardware.input.use_key_gesture_event_handler_multi_key_gestures"

    const-string v1, "com.android.hardware.input.abort_slow_multi_press"

    const-string v2, "com.android.hardware.input.can_window_override_power_gesture_api"

    const-string v3, "com.android.hardware.input.enable_backup_and_restore_for_input_gestures"

    const-string v4, "com.android.hardware.input.enable_customizable_input_gestures"

    const-string v5, "com.android.hardware.input.enable_display_color_inversion_key_gestures"

    const-string v6, "com.android.hardware.input.enable_new_25q2_keycodes"

    const-string v7, "com.android.hardware.input.enable_talkback_and_magnifier_key_gestures"

    const-string v8, "com.android.hardware.input.enable_voice_access_key_gestures"

    const-string v9, "com.android.hardware.input.fix_search_modifier_fallbacks"

    const-string v10, "com.android.hardware.input.input_manager_lifecycle_support"

    const-string v11, "com.android.hardware.input.key_event_activity_detection"

    const-string v12, "com.android.hardware.input.keyboard_a11y_mouse_keys"

    const-string v13, "com.android.hardware.input.keyboard_a11y_shortcut_control"

    const-string v14, "com.android.hardware.input.keyboard_glyph_map"

    const-string v15, "com.android.hardware.input.keyboard_repeat_keys"

    const-string v16, "com.android.hardware.input.manage_key_gestures"

    const-string v17, "com.android.hardware.input.modifier_shortcut_dump"

    const-string v18, "com.android.hardware.input.modifier_shortcut_manager_refactor"

    const-string v19, "com.android.hardware.input.mouse_reverse_vertical_scrolling"

    const-string v20, "com.android.hardware.input.mouse_scrolling_acceleration"

    const-string v21, "com.android.hardware.input.mouse_swap_primary_button"

    const-string v22, "com.android.hardware.input.override_power_key_behavior_in_focused_window"

    const-string v23, "com.android.hardware.input.pointer_acceleration"

    const-string v24, "com.android.hardware.input.remove_fallback_modifiers"

    const-string v25, "com.android.hardware.input.request_key_capture_api"

    const-string v26, "com.android.hardware.input.touchpad_system_gesture_disable"

    const-string v27, "com.android.hardware.input.touchpad_three_finger_tap_shortcut"

    const-string v28, "com.android.hardware.input.touchpad_visualizer"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 243
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist inputManagerLifecycleSupport()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.hardware.input.input_manager_lifecycle_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 231
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keyEventActivityDetection()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.hardware.input.key_event_activity_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyboardA11yMouseKeys()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.hardware.input.keyboard_a11y_mouse_keys"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyboardA11yShortcutControl()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.hardware.input.keyboard_a11y_shortcut_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyboardGlyphMap()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.hardware.input.keyboard_glyph_map"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyboardRepeatKeys()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.hardware.input.keyboard_repeat_keys"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist manageKeyGestures()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.hardware.input.manage_key_gestures"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist modifierShortcutDump()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.hardware.input.modifier_shortcut_dump"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist modifierShortcutManagerRefactor()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.hardware.input.modifier_shortcut_manager_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mouseReverseVerticalScrolling()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.hardware.input.mouse_reverse_vertical_scrolling"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mouseScrollingAcceleration()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.hardware.input.mouse_scrolling_acceleration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mouseSwapPrimaryButton()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.hardware.input.mouse_swap_primary_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist overridePowerKeyBehaviorInFocusedWindow()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.hardware.input.override_power_key_behavior_in_focused_window"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist pointerAcceleration()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.hardware.input.pointer_acceleration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeFallbackModifiers()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.hardware.input.remove_fallback_modifiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist requestKeyCaptureApi()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.hardware.input.request_key_capture_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist touchpadSystemGestureDisable()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.hardware.input.touchpad_system_gesture_disable"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist touchpadThreeFingerTapShortcut()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.hardware.input.touchpad_three_finger_tap_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist touchpadVisualizer()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.hardware.input.touchpad_visualizer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useKeyGestureEventHandler()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.hardware.input.use_key_gesture_event_handler"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useKeyGestureEventHandlerMultiKeyGestures()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.hardware.input.use_key_gesture_event_handler_multi_key_gestures"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
