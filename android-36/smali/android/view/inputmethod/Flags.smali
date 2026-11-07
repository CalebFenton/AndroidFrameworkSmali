.class public final Landroid/view/inputmethod/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags; = null

.field public static final blacklist FLAG_ADAPTIVE_HANDWRITING_BOUNDS:Ljava/lang/String; = "android.view.inputmethod.adaptive_handwriting_bounds"

.field public static final blacklist FLAG_COMPATCHANGE_FOR_ZEROJANKPROXY:Ljava/lang/String; = "android.view.inputmethod.compatchange_for_zerojankproxy"

.field public static final blacklist FLAG_CONCURRENT_INPUT_METHODS:Ljava/lang/String; = "android.view.inputmethod.concurrent_input_methods"

.field public static final blacklist FLAG_CONNECTIONLESS_HANDWRITING:Ljava/lang/String; = "android.view.inputmethod.connectionless_handwriting"

.field public static final blacklist FLAG_CONSISTENT_GET_CURRENT_INPUT_METHOD_INFO:Ljava/lang/String; = "android.view.inputmethod.consistent_get_current_input_method_info"

.field public static final blacklist FLAG_CTRL_SHIFT_SHORTCUT:Ljava/lang/String; = "android.view.inputmethod.ctrl_shift_shortcut"

.field public static final blacklist FLAG_DEFER_SHOW_SOFT_INPUT_UNTIL_SESSION_CREATION:Ljava/lang/String; = "android.view.inputmethod.defer_show_soft_input_until_session_creation"

.field public static final blacklist FLAG_DISALLOW_DISABLING_IME_NAVIGATION_BAR:Ljava/lang/String; = "android.view.inputmethod.disallow_disabling_ime_navigation_bar"

.field public static final blacklist FLAG_EDITORINFO_HANDWRITING_ENABLED:Ljava/lang/String; = "android.view.inputmethod.editorinfo_handwriting_enabled"

.field public static final blacklist FLAG_FALLBACK_DISPLAY_FOR_SECONDARY_USER_ON_SECONDARY_DISPLAY:Ljava/lang/String; = "android.view.inputmethod.fallback_display_for_secondary_user_on_secondary_display"

.field public static final blacklist FLAG_HOME_SCREEN_HANDWRITING_DELEGATOR:Ljava/lang/String; = "android.view.inputmethod.home_screen_handwriting_delegator"

.field public static final blacklist FLAG_IME_SWITCHER_REVAMP:Ljava/lang/String; = "android.view.inputmethod.ime_switcher_revamp"

.field public static final blacklist FLAG_IME_SWITCHER_REVAMP_API:Ljava/lang/String; = "android.view.inputmethod.ime_switcher_revamp_api"

.field public static final blacklist FLAG_INITIATION_WITHOUT_INPUT_CONNECTION:Ljava/lang/String; = "android.view.inputmethod.initiation_without_input_connection"

.field public static final blacklist FLAG_INVALIDATE_INPUT_CALLS_RESTART:Ljava/lang/String; = "android.view.inputmethod.invalidate_input_calls_restart"

.field public static final blacklist FLAG_LOWER_IME_OOM_IMPORTANCE:Ljava/lang/String; = "android.view.inputmethod.lower_ime_oom_importance"

.field public static final blacklist FLAG_PREDICTIVE_BACK_IME:Ljava/lang/String; = "android.view.inputmethod.predictive_back_ime"

.field public static final blacklist FLAG_PUBLIC_AUTOFILL_ID_IN_EDITORINFO:Ljava/lang/String; = "android.view.inputmethod.public_autofill_id_in_editorinfo"

.field public static final blacklist FLAG_REFACTOR_INSETS_CONTROLLER:Ljava/lang/String; = "android.view.inputmethod.refactor_insets_controller"

.field public static final blacklist FLAG_REPORT_ANIMATING_INSETS_TYPES:Ljava/lang/String; = "android.view.inputmethod.report_animating_insets_types"

.field public static final blacklist FLAG_USE_HANDWRITING_LISTENER_FOR_TOOLTYPE:Ljava/lang/String; = "android.view.inputmethod.use_handwriting_listener_for_tooltype"

.field public static final blacklist FLAG_USE_INPUT_METHOD_INFO_SAFE_LIST:Ljava/lang/String; = "android.view.inputmethod.use_input_method_info_safe_list"

.field public static final blacklist FLAG_USE_ZERO_JANK_PROXY:Ljava/lang/String; = "android.view.inputmethod.use_zero_jank_proxy"

.field public static final blacklist FLAG_VERIFY_KEY_EVENT:Ljava/lang/String; = "android.view.inputmethod.verify_key_event"

.field public static final blacklist FLAG_WRITING_TOOLS:Ljava/lang/String; = "android.view.inputmethod.writing_tools"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 233
    new-instance v0, Landroid/view/inputmethod/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/view/inputmethod/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adaptiveHandwritingBounds()Z
    .registers 1

    .line 62
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->adaptiveHandwritingBounds()Z

    move-result v0

    return v0
.end method

.method public static greylist compatchangeForZerojankproxy()Z
    .registers 1

    .line 69
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->compatchangeForZerojankproxy()Z

    move-result v0

    return v0
.end method

.method public static greylist concurrentInputMethods()Z
    .registers 1

    .line 76
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->concurrentInputMethods()Z

    move-result v0

    return v0
.end method

.method public static greylist connectionlessHandwriting()Z
    .registers 1

    .line 83
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->connectionlessHandwriting()Z

    move-result v0

    return v0
.end method

.method public static greylist consistentGetCurrentInputMethodInfo()Z
    .registers 1

    .line 90
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->consistentGetCurrentInputMethodInfo()Z

    move-result v0

    return v0
.end method

.method public static greylist ctrlShiftShortcut()Z
    .registers 1

    .line 97
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->ctrlShiftShortcut()Z

    move-result v0

    return v0
.end method

.method public static greylist deferShowSoftInputUntilSessionCreation()Z
    .registers 1

    .line 104
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->deferShowSoftInputUntilSessionCreation()Z

    move-result v0

    return v0
.end method

.method public static greylist disallowDisablingImeNavigationBar()Z
    .registers 1

    .line 111
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->disallowDisablingImeNavigationBar()Z

    move-result v0

    return v0
.end method

.method public static greylist editorinfoHandwritingEnabled()Z
    .registers 1

    .line 118
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->editorinfoHandwritingEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist fallbackDisplayForSecondaryUserOnSecondaryDisplay()Z
    .registers 1

    .line 125
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->fallbackDisplayForSecondaryUserOnSecondaryDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist homeScreenHandwritingDelegator()Z
    .registers 1

    .line 132
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->homeScreenHandwritingDelegator()Z

    move-result v0

    return v0
.end method

.method public static greylist imeSwitcherRevamp()Z
    .registers 1

    .line 139
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->imeSwitcherRevamp()Z

    move-result v0

    return v0
.end method

.method public static greylist imeSwitcherRevampApi()Z
    .registers 1

    .line 146
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->imeSwitcherRevampApi()Z

    move-result v0

    return v0
.end method

.method public static greylist initiationWithoutInputConnection()Z
    .registers 1

    .line 153
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->initiationWithoutInputConnection()Z

    move-result v0

    return v0
.end method

.method public static greylist invalidateInputCallsRestart()Z
    .registers 1

    .line 160
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->invalidateInputCallsRestart()Z

    move-result v0

    return v0
.end method

.method public static greylist lowerImeOomImportance()Z
    .registers 1

    .line 167
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->lowerImeOomImportance()Z

    move-result v0

    return v0
.end method

.method public static greylist predictiveBackIme()Z
    .registers 1

    .line 174
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->predictiveBackIme()Z

    move-result v0

    return v0
.end method

.method public static greylist publicAutofillIdInEditorinfo()Z
    .registers 1

    .line 181
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->publicAutofillIdInEditorinfo()Z

    move-result v0

    return v0
.end method

.method public static greylist refactorInsetsController()Z
    .registers 1

    .line 188
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->refactorInsetsController()Z

    move-result v0

    return v0
.end method

.method public static greylist reportAnimatingInsetsTypes()Z
    .registers 1

    .line 195
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->reportAnimatingInsetsTypes()Z

    move-result v0

    return v0
.end method

.method public static greylist useHandwritingListenerForTooltype()Z
    .registers 1

    .line 202
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->useHandwritingListenerForTooltype()Z

    move-result v0

    return v0
.end method

.method public static greylist useInputMethodInfoSafeList()Z
    .registers 1

    .line 209
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->useInputMethodInfoSafeList()Z

    move-result v0

    return v0
.end method

.method public static greylist useZeroJankProxy()Z
    .registers 1

    .line 216
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->useZeroJankProxy()Z

    move-result v0

    return v0
.end method

.method public static greylist verifyKeyEvent()Z
    .registers 1

    .line 223
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->verifyKeyEvent()Z

    move-result v0

    return v0
.end method

.method public static greylist writingTools()Z
    .registers 1

    .line 230
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->writingTools()Z

    move-result v0

    return v0
.end method
