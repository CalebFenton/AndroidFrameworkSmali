.class public final Lcom/android/text/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CLEAR_FONT_VARIATION_SETTINGS:Ljava/lang/String; = "com.android.text.flags.clear_font_variation_settings"

.field public static final blacklist FLAG_COMPLETE_FONT_LOAD_IN_SYSTEM_SERVICES_READY:Ljava/lang/String; = "com.android.text.flags.complete_font_load_in_system_services_ready"

.field public static final blacklist FLAG_CONTEXT_MENU_HIDE_UNAVAILABLE_ITEMS:Ljava/lang/String; = "com.android.text.flags.context_menu_hide_unavailable_items"

.field public static final blacklist FLAG_DEPRECATE_ELEGANT_TEXT_HEIGHT_API:Ljava/lang/String; = "com.android.text.flags.deprecate_elegant_text_height_api"

.field public static final blacklist FLAG_DISABLE_HANDWRITING_INITIATOR_FOR_IME:Ljava/lang/String; = "com.android.text.flags.disable_handwriting_initiator_for_ime"

.field public static final blacklist FLAG_ESCAPE_CLEARS_FOCUS:Ljava/lang/String; = "com.android.text.flags.escape_clears_focus"

.field public static final blacklist FLAG_FIX_LINE_HEIGHT_FOR_LOCALE:Ljava/lang/String; = "com.android.text.flags.fix_line_height_for_locale"

.field public static final blacklist FLAG_FIX_NULL_TYPEFACE_BOLDING:Ljava/lang/String; = "com.android.text.flags.fix_null_typeface_bolding"

.field public static final blacklist FLAG_HANDWRITING_CURSOR_POSITION:Ljava/lang/String; = "com.android.text.flags.handwriting_cursor_position"

.field public static final blacklist FLAG_HANDWRITING_END_OF_LINE_TAP:Ljava/lang/String; = "com.android.text.flags.handwriting_end_of_line_tap"

.field public static final blacklist FLAG_HANDWRITING_GESTURE_WITH_TRANSFORMATION:Ljava/lang/String; = "com.android.text.flags.handwriting_gesture_with_transformation"

.field public static final blacklist FLAG_HANDWRITING_TRACK_DISABLED:Ljava/lang/String; = "com.android.text.flags.handwriting_track_disabled"

.field public static final blacklist FLAG_HANDWRITING_UNSUPPORTED_MESSAGE:Ljava/lang/String; = "com.android.text.flags.handwriting_unsupported_message"

.field public static final blacklist FLAG_HANDWRITING_UNSUPPORTED_SHOW_SOFT_INPUT_FIX:Ljava/lang/String; = "com.android.text.flags.handwriting_unsupported_show_soft_input_fix"

.field public static final blacklist FLAG_INSERT_MODE_CRASH_UPDATE_LAYOUT_SPAN:Ljava/lang/String; = "com.android.text.flags.insert_mode_crash_update_layout_span"

.field public static final blacklist FLAG_INSERT_MODE_CRASH_WHEN_DELETE:Ljava/lang/String; = "com.android.text.flags.insert_mode_crash_when_delete"

.field public static final blacklist FLAG_INSERT_MODE_HIGHLIGHT_RANGE:Ljava/lang/String; = "com.android.text.flags.insert_mode_highlight_range"

.field public static final blacklist FLAG_INSERT_MODE_NOT_UPDATE_SELECTION:Ljava/lang/String; = "com.android.text.flags.insert_mode_not_update_selection"

.field public static final blacklist FLAG_LETTER_SPACING_JUSTIFICATION:Ljava/lang/String; = "com.android.text.flags.letter_spacing_justification"

.field public static final blacklist FLAG_MISSING_GETTER_APIS:Ljava/lang/String; = "com.android.text.flags.missing_getter_apis"

.field public static final blacklist FLAG_NEW_FONTS_FALLBACK_XML:Ljava/lang/String; = "com.android.text.flags.new_fonts_fallback_xml"

.field public static final blacklist FLAG_NO_BREAK_NO_HYPHENATION_SPAN:Ljava/lang/String; = "com.android.text.flags.no_break_no_hyphenation_span"

.field public static final blacklist FLAG_RUST_HYPHENATOR:Ljava/lang/String; = "com.android.text.flags.rust_hyphenator"

.field public static final blacklist FLAG_TTS_SPAN_DURATION:Ljava/lang/String; = "com.android.text.flags.tts_span_duration"

.field public static final blacklist FLAG_TYPEFACE_CACHE_FOR_VAR_SETTINGS:Ljava/lang/String; = "com.android.text.flags.typeface_cache_for_var_settings"

.field public static final blacklist FLAG_TYPEFACE_REDESIGN_READONLY:Ljava/lang/String; = "com.android.text.flags.typeface_redesign_readonly"

.field public static final blacklist FLAG_USE_BOUNDS_FOR_WIDTH:Ljava/lang/String; = "com.android.text.flags.use_bounds_for_width"

.field public static final blacklist FLAG_USE_OPTIMIZED_BOOTTIME_FONT_LOADING:Ljava/lang/String; = "com.android.text.flags.use_optimized_boottime_font_loading"

.field public static final blacklist FLAG_VERTICAL_TEXT_LAYOUT:Ljava/lang/String; = "com.android.text.flags.vertical_text_layout"

.field public static final blacklist FLAG_WORD_STYLE_AUTO:Ljava/lang/String; = "com.android.text.flags.word_style_auto"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 278
    new-instance v0, Lcom/android/text/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/text/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist clearFontVariationSettings()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->clearFontVariationSettings()Z

    move-result v0

    return v0
.end method

.method public static greylist completeFontLoadInSystemServicesReady()Z
    .registers 1

    .line 79
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->completeFontLoadInSystemServicesReady()Z

    move-result v0

    return v0
.end method

.method public static greylist contextMenuHideUnavailableItems()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->contextMenuHideUnavailableItems()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateElegantTextHeightApi()Z
    .registers 1

    .line 93
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->deprecateElegantTextHeightApi()Z

    move-result v0

    return v0
.end method

.method public static greylist disableHandwritingInitiatorForIme()Z
    .registers 1

    .line 100
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->disableHandwritingInitiatorForIme()Z

    move-result v0

    return v0
.end method

.method public static greylist escapeClearsFocus()Z
    .registers 1

    .line 107
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->escapeClearsFocus()Z

    move-result v0

    return v0
.end method

.method public static greylist fixLineHeightForLocale()Z
    .registers 1

    .line 114
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->fixLineHeightForLocale()Z

    move-result v0

    return v0
.end method

.method public static greylist fixNullTypefaceBolding()Z
    .registers 1

    .line 121
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->fixNullTypefaceBolding()Z

    move-result v0

    return v0
.end method

.method public static greylist handwritingCursorPosition()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->handwritingCursorPosition()Z

    move-result v0

    return v0
.end method

.method public static greylist handwritingEndOfLineTap()Z
    .registers 1

    .line 135
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->handwritingEndOfLineTap()Z

    move-result v0

    return v0
.end method

.method public static greylist handwritingGestureWithTransformation()Z
    .registers 1

    .line 142
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->handwritingGestureWithTransformation()Z

    move-result v0

    return v0
.end method

.method public static greylist handwritingTrackDisabled()Z
    .registers 1

    .line 149
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->handwritingTrackDisabled()Z

    move-result v0

    return v0
.end method

.method public static greylist handwritingUnsupportedMessage()Z
    .registers 1

    .line 156
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->handwritingUnsupportedMessage()Z

    move-result v0

    return v0
.end method

.method public static greylist handwritingUnsupportedShowSoftInputFix()Z
    .registers 1

    .line 163
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->handwritingUnsupportedShowSoftInputFix()Z

    move-result v0

    return v0
.end method

.method public static greylist insertModeCrashUpdateLayoutSpan()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->insertModeCrashUpdateLayoutSpan()Z

    move-result v0

    return v0
.end method

.method public static greylist insertModeCrashWhenDelete()Z
    .registers 1

    .line 177
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->insertModeCrashWhenDelete()Z

    move-result v0

    return v0
.end method

.method public static greylist insertModeHighlightRange()Z
    .registers 1

    .line 184
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->insertModeHighlightRange()Z

    move-result v0

    return v0
.end method

.method public static greylist insertModeNotUpdateSelection()Z
    .registers 1

    .line 191
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->insertModeNotUpdateSelection()Z

    move-result v0

    return v0
.end method

.method public static greylist letterSpacingJustification()Z
    .registers 1

    .line 198
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->letterSpacingJustification()Z

    move-result v0

    return v0
.end method

.method public static greylist missingGetterApis()Z
    .registers 1

    .line 205
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->missingGetterApis()Z

    move-result v0

    return v0
.end method

.method public static greylist newFontsFallbackXml()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->newFontsFallbackXml()Z

    move-result v0

    return v0
.end method

.method public static greylist noBreakNoHyphenationSpan()Z
    .registers 1

    .line 219
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->noBreakNoHyphenationSpan()Z

    move-result v0

    return v0
.end method

.method public static greylist rustHyphenator()Z
    .registers 1

    .line 226
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->rustHyphenator()Z

    move-result v0

    return v0
.end method

.method public static greylist ttsSpanDuration()Z
    .registers 1

    .line 233
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->ttsSpanDuration()Z

    move-result v0

    return v0
.end method

.method public static greylist typefaceCacheForVarSettings()Z
    .registers 1

    .line 240
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->typefaceCacheForVarSettings()Z

    move-result v0

    return v0
.end method

.method public static greylist typefaceRedesignReadonly()Z
    .registers 1

    .line 247
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->typefaceRedesignReadonly()Z

    move-result v0

    return v0
.end method

.method public static greylist useBoundsForWidth()Z
    .registers 1

    .line 254
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->useBoundsForWidth()Z

    move-result v0

    return v0
.end method

.method public static greylist useOptimizedBoottimeFontLoading()Z
    .registers 1

    .line 261
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->useOptimizedBoottimeFontLoading()Z

    move-result v0

    return v0
.end method

.method public static greylist verticalTextLayout()Z
    .registers 1

    .line 268
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->verticalTextLayout()Z

    move-result v0

    return v0
.end method

.method public static greylist wordStyleAuto()Z
    .registers 1

    .line 275
    sget-object v0, Lcom/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/text/flags/FeatureFlags;->wordStyleAuto()Z

    move-result v0

    return v0
.end method
