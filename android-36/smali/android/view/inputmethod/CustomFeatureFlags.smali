.class public Landroid/view/inputmethod/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/view/inputmethod/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/FeatureFlags;",
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
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/view/inputmethod/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v1, Ljava/util/HashSet;

    const-string v26, "android.view.inputmethod.writing_tools"

    const-string v27, ""

    const-string v2, "android.view.inputmethod.adaptive_handwriting_bounds"

    const-string v3, "android.view.inputmethod.compatchange_for_zerojankproxy"

    const-string v4, "android.view.inputmethod.concurrent_input_methods"

    const-string v5, "android.view.inputmethod.connectionless_handwriting"

    const-string v6, "android.view.inputmethod.consistent_get_current_input_method_info"

    const-string v7, "android.view.inputmethod.ctrl_shift_shortcut"

    const-string v8, "android.view.inputmethod.defer_show_soft_input_until_session_creation"

    const-string v9, "android.view.inputmethod.disallow_disabling_ime_navigation_bar"

    const-string v10, "android.view.inputmethod.editorinfo_handwriting_enabled"

    const-string v11, "android.view.inputmethod.fallback_display_for_secondary_user_on_secondary_display"

    const-string v12, "android.view.inputmethod.home_screen_handwriting_delegator"

    const-string v13, "android.view.inputmethod.ime_switcher_revamp"

    const-string v14, "android.view.inputmethod.ime_switcher_revamp_api"

    const-string v15, "android.view.inputmethod.initiation_without_input_connection"

    const-string v16, "android.view.inputmethod.invalidate_input_calls_restart"

    const-string v17, "android.view.inputmethod.lower_ime_oom_importance"

    const-string v18, "android.view.inputmethod.predictive_back_ime"

    const-string v19, "android.view.inputmethod.public_autofill_id_in_editorinfo"

    const-string v20, "android.view.inputmethod.refactor_insets_controller"

    const-string v21, "android.view.inputmethod.report_animating_insets_types"

    const-string v22, "android.view.inputmethod.use_handwriting_listener_for_tooltype"

    const-string v23, "android.view.inputmethod.use_input_method_info_safe_list"

    const-string v24, "android.view.inputmethod.use_zero_jank_proxy"

    const-string v25, "android.view.inputmethod.verify_key_event"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/inputmethod/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/view/inputmethod/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 204
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist adaptiveHandwritingBounds()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.view.inputmethod.adaptive_handwriting_bounds"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist compatchangeForZerojankproxy()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.view.inputmethod.compatchange_for_zerojankproxy"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist concurrentInputMethods()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.view.inputmethod.concurrent_input_methods"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist connectionlessHandwriting()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.view.inputmethod.connectionless_handwriting"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist consistentGetCurrentInputMethodInfo()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.view.inputmethod.consistent_get_current_input_method_info"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ctrlShiftShortcut()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.view.inputmethod.ctrl_shift_shortcut"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deferShowSoftInputUntilSessionCreation()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.view.inputmethod.defer_show_soft_input_until_session_creation"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disallowDisablingImeNavigationBar()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.view.inputmethod.disallow_disabling_ime_navigation_bar"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist editorinfoHandwritingEnabled()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.view.inputmethod.editorinfo_handwriting_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fallbackDisplayForSecondaryUserOnSecondaryDisplay()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.view.inputmethod.fallback_display_for_secondary_user_on_secondary_display"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    const-string v24, "android.view.inputmethod.verify_key_event"

    const-string v25, "android.view.inputmethod.writing_tools"

    const-string v1, "android.view.inputmethod.adaptive_handwriting_bounds"

    const-string v2, "android.view.inputmethod.compatchange_for_zerojankproxy"

    const-string v3, "android.view.inputmethod.concurrent_input_methods"

    const-string v4, "android.view.inputmethod.connectionless_handwriting"

    const-string v5, "android.view.inputmethod.consistent_get_current_input_method_info"

    const-string v6, "android.view.inputmethod.ctrl_shift_shortcut"

    const-string v7, "android.view.inputmethod.defer_show_soft_input_until_session_creation"

    const-string v8, "android.view.inputmethod.disallow_disabling_ime_navigation_bar"

    const-string v9, "android.view.inputmethod.editorinfo_handwriting_enabled"

    const-string v10, "android.view.inputmethod.fallback_display_for_secondary_user_on_secondary_display"

    const-string v11, "android.view.inputmethod.home_screen_handwriting_delegator"

    const-string v12, "android.view.inputmethod.ime_switcher_revamp"

    const-string v13, "android.view.inputmethod.ime_switcher_revamp_api"

    const-string v14, "android.view.inputmethod.initiation_without_input_connection"

    const-string v15, "android.view.inputmethod.invalidate_input_calls_restart"

    const-string v16, "android.view.inputmethod.lower_ime_oom_importance"

    const-string v17, "android.view.inputmethod.predictive_back_ime"

    const-string v18, "android.view.inputmethod.public_autofill_id_in_editorinfo"

    const-string v19, "android.view.inputmethod.refactor_insets_controller"

    const-string v20, "android.view.inputmethod.report_animating_insets_types"

    const-string v21, "android.view.inputmethod.use_handwriting_listener_for_tooltype"

    const-string v22, "android.view.inputmethod.use_input_method_info_safe_list"

    const-string v23, "android.view.inputmethod.use_zero_jank_proxy"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

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
            "Landroid/view/inputmethod/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 208
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/inputmethod/FeatureFlags;>;"
    iget-object v0, p0, Landroid/view/inputmethod/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist homeScreenHandwritingDelegator()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.view.inputmethod.home_screen_handwriting_delegator"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist imeSwitcherRevamp()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.view.inputmethod.ime_switcher_revamp"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist imeSwitcherRevampApi()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.view.inputmethod.ime_switcher_revamp_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist initiationWithoutInputConnection()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.view.inputmethod.initiation_without_input_connection"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist invalidateInputCallsRestart()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.view.inputmethod.invalidate_input_calls_restart"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Landroid/view/inputmethod/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 196
    invoke-direct {p0}, Landroid/view/inputmethod/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 197
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist lowerImeOomImportance()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.view.inputmethod.lower_ime_oom_importance"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist predictiveBackIme()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.view.inputmethod.predictive_back_ime"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist publicAutofillIdInEditorinfo()Z
    .registers 3

    .line 141
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.view.inputmethod.public_autofill_id_in_editorinfo"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist refactorInsetsController()Z
    .registers 3

    .line 148
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.view.inputmethod.refactor_insets_controller"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reportAnimatingInsetsTypes()Z
    .registers 3

    .line 155
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.view.inputmethod.report_animating_insets_types"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useHandwritingListenerForTooltype()Z
    .registers 3

    .line 162
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.view.inputmethod.use_handwriting_listener_for_tooltype"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useInputMethodInfoSafeList()Z
    .registers 3

    .line 169
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.view.inputmethod.use_input_method_info_safe_list"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useZeroJankProxy()Z
    .registers 3

    .line 176
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.view.inputmethod.use_zero_jank_proxy"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist verifyKeyEvent()Z
    .registers 3

    .line 183
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.view.inputmethod.verify_key_event"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist writingTools()Z
    .registers 3

    .line 190
    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.view.inputmethod.writing_tools"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
