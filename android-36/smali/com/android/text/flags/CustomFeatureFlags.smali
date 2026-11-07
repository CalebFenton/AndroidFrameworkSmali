.class public Lcom/android/text/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/text/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/text/flags/FeatureFlags;",
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
            "Lcom/android/text/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/text/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v1, Ljava/util/HashSet;

    const-string v31, "com.android.text.flags.word_style_auto"

    const-string v32, ""

    const-string v2, "com.android.text.flags.clear_font_variation_settings"

    const-string v3, "com.android.text.flags.complete_font_load_in_system_services_ready"

    const-string v4, "com.android.text.flags.context_menu_hide_unavailable_items"

    const-string v5, "com.android.text.flags.deprecate_elegant_text_height_api"

    const-string v6, "com.android.text.flags.disable_handwriting_initiator_for_ime"

    const-string v7, "com.android.text.flags.escape_clears_focus"

    const-string v8, "com.android.text.flags.fix_line_height_for_locale"

    const-string v9, "com.android.text.flags.fix_null_typeface_bolding"

    const-string v10, "com.android.text.flags.handwriting_cursor_position"

    const-string v11, "com.android.text.flags.handwriting_end_of_line_tap"

    const-string v12, "com.android.text.flags.handwriting_gesture_with_transformation"

    const-string v13, "com.android.text.flags.handwriting_track_disabled"

    const-string v14, "com.android.text.flags.handwriting_unsupported_message"

    const-string v15, "com.android.text.flags.handwriting_unsupported_show_soft_input_fix"

    const-string v16, "com.android.text.flags.insert_mode_crash_update_layout_span"

    const-string v17, "com.android.text.flags.insert_mode_crash_when_delete"

    const-string v18, "com.android.text.flags.insert_mode_highlight_range"

    const-string v19, "com.android.text.flags.insert_mode_not_update_selection"

    const-string v20, "com.android.text.flags.letter_spacing_justification"

    const-string v21, "com.android.text.flags.missing_getter_apis"

    const-string v22, "com.android.text.flags.new_fonts_fallback_xml"

    const-string v23, "com.android.text.flags.no_break_no_hyphenation_span"

    const-string v24, "com.android.text.flags.rust_hyphenator"

    const-string v25, "com.android.text.flags.tts_span_duration"

    const-string v26, "com.android.text.flags.typeface_cache_for_var_settings"

    const-string v27, "com.android.text.flags.typeface_redesign_readonly"

    const-string v28, "com.android.text.flags.use_bounds_for_width"

    const-string v29, "com.android.text.flags.use_optimized_boottime_font_loading"

    const-string v30, "com.android.text.flags.vertical_text_layout"

    filled-new-array/range {v2 .. v32}, [Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/text/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/text/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

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
.method public greylist clearFontVariationSettings()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.text.flags.clear_font_variation_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist completeFontLoadInSystemServicesReady()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.text.flags.complete_font_load_in_system_services_ready"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist contextMenuHideUnavailableItems()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.text.flags.context_menu_hide_unavailable_items"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateElegantTextHeightApi()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.text.flags.deprecate_elegant_text_height_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableHandwritingInitiatorForIme()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.text.flags.disable_handwriting_initiator_for_ime"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist escapeClearsFocus()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.text.flags.escape_clears_focus"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixLineHeightForLocale()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.text.flags.fix_line_height_for_locale"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixNullTypefaceBolding()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.text.flags.fix_null_typeface_bolding"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
    const-string v29, "com.android.text.flags.vertical_text_layout"

    const-string v30, "com.android.text.flags.word_style_auto"

    const-string v1, "com.android.text.flags.clear_font_variation_settings"

    const-string v2, "com.android.text.flags.complete_font_load_in_system_services_ready"

    const-string v3, "com.android.text.flags.context_menu_hide_unavailable_items"

    const-string v4, "com.android.text.flags.deprecate_elegant_text_height_api"

    const-string v5, "com.android.text.flags.disable_handwriting_initiator_for_ime"

    const-string v6, "com.android.text.flags.escape_clears_focus"

    const-string v7, "com.android.text.flags.fix_line_height_for_locale"

    const-string v8, "com.android.text.flags.fix_null_typeface_bolding"

    const-string v9, "com.android.text.flags.handwriting_cursor_position"

    const-string v10, "com.android.text.flags.handwriting_end_of_line_tap"

    const-string v11, "com.android.text.flags.handwriting_gesture_with_transformation"

    const-string v12, "com.android.text.flags.handwriting_track_disabled"

    const-string v13, "com.android.text.flags.handwriting_unsupported_message"

    const-string v14, "com.android.text.flags.handwriting_unsupported_show_soft_input_fix"

    const-string v15, "com.android.text.flags.insert_mode_crash_update_layout_span"

    const-string v16, "com.android.text.flags.insert_mode_crash_when_delete"

    const-string v17, "com.android.text.flags.insert_mode_highlight_range"

    const-string v18, "com.android.text.flags.insert_mode_not_update_selection"

    const-string v19, "com.android.text.flags.letter_spacing_justification"

    const-string v20, "com.android.text.flags.missing_getter_apis"

    const-string v21, "com.android.text.flags.new_fonts_fallback_xml"

    const-string v22, "com.android.text.flags.no_break_no_hyphenation_span"

    const-string v23, "com.android.text.flags.rust_hyphenator"

    const-string v24, "com.android.text.flags.tts_span_duration"

    const-string v25, "com.android.text.flags.typeface_cache_for_var_settings"

    const-string v26, "com.android.text.flags.typeface_redesign_readonly"

    const-string v27, "com.android.text.flags.use_bounds_for_width"

    const-string v28, "com.android.text.flags.use_optimized_boottime_font_loading"

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
            "Lcom/android/text/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 243
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/text/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/text/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist handwritingCursorPosition()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_cursor_position"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist handwritingEndOfLineTap()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_end_of_line_tap"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist handwritingGestureWithTransformation()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_gesture_with_transformation"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist handwritingTrackDisabled()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_track_disabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist handwritingUnsupportedMessage()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_unsupported_message"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist handwritingUnsupportedShowSoftInputFix()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_unsupported_show_soft_input_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist insertModeCrashUpdateLayoutSpan()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_crash_update_layout_span"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist insertModeCrashWhenDelete()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_crash_when_delete"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist insertModeHighlightRange()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_highlight_range"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist insertModeNotUpdateSelection()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_not_update_selection"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/android/text/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 231
    invoke-direct {p0}, Lcom/android/text/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

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

.method public greylist letterSpacingJustification()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.text.flags.letter_spacing_justification"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist missingGetterApis()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.text.flags.missing_getter_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist newFontsFallbackXml()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.text.flags.new_fonts_fallback_xml"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist noBreakNoHyphenationSpan()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.text.flags.no_break_no_hyphenation_span"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rustHyphenator()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.text.flags.rust_hyphenator"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ttsSpanDuration()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.text.flags.tts_span_duration"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist typefaceCacheForVarSettings()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.text.flags.typeface_cache_for_var_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist typefaceRedesignReadonly()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.text.flags.typeface_redesign_readonly"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useBoundsForWidth()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.text.flags.use_bounds_for_width"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useOptimizedBoottimeFontLoading()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.text.flags.use_optimized_boottime_font_loading"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist verticalTextLayout()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.text.flags.vertical_text_layout"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wordStyleAuto()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.text.flags.word_style_auto"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
