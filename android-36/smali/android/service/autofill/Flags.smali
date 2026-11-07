.class public final Landroid/service/autofill/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_ACCESSIBILITY_TITLE_FOR_AUGMENTED_AUTOFILL_DROPDOWN:Ljava/lang/String; = "android.service.autofill.add_accessibility_title_for_augmented_autofill_dropdown"

.field public static final blacklist FLAG_ADD_LAST_FOCUSED_ID_TO_CLIENT_STATE:Ljava/lang/String; = "android.service.autofill.add_last_focused_id_to_client_state"

.field public static final blacklist FLAG_ADD_LAST_FOCUSED_ID_TO_FILL_EVENT_HISTORY:Ljava/lang/String; = "android.service.autofill.add_last_focused_id_to_fill_event_history"

.field public static final blacklist FLAG_ADD_SESSION_ID_TO_CLIENT_STATE:Ljava/lang/String; = "android.service.autofill.add_session_id_to_client_state"

.field public static final blacklist FLAG_AUTOFILL_CREDMAN_DEV_INTEGRATION:Ljava/lang/String; = "android.service.autofill.autofill_credman_dev_integration"

.field public static final blacklist FLAG_AUTOFILL_CREDMAN_INTEGRATION:Ljava/lang/String; = "android.service.autofill.autofill_credman_integration"

.field public static final blacklist FLAG_AUTOFILL_CREDMAN_INTEGRATION_PHASE2:Ljava/lang/String; = "android.service.autofill.autofill_credman_integration_phase2"

.field public static final blacklist FLAG_AUTOFILL_SESSION_DESTROYED:Ljava/lang/String; = "android.service.autofill.autofill_session_destroyed"

.field public static final blacklist FLAG_AUTOFILL_W_METRICS:Ljava/lang/String; = "android.service.autofill.autofill_w_metrics"

.field public static final blacklist FLAG_FILL_DIALOG_IMPROVEMENTS:Ljava/lang/String; = "android.service.autofill.fill_dialog_improvements"

.field public static final blacklist FLAG_FILL_DIALOG_IMPROVEMENTS_IMPL:Ljava/lang/String; = "android.service.autofill.fill_dialog_improvements_impl"

.field public static final blacklist FLAG_FILL_FIELDS_FROM_CURRENT_SESSION_ONLY:Ljava/lang/String; = "android.service.autofill.fill_fields_from_current_session_only"

.field public static final blacklist FLAG_FIX_GET_AUTOFILL_COMPONENT:Ljava/lang/String; = "android.service.autofill.fix_get_autofill_component"

.field public static final blacklist FLAG_HIGHLIGHT_AUTOFILL_SINGLE_FIELD:Ljava/lang/String; = "android.service.autofill.highlight_autofill_single_field"

.field public static final blacklist FLAG_IMPROVE_FILL_DIALOG_ACONFIG:Ljava/lang/String; = "android.service.autofill.improve_fill_dialog_aconfig"

.field public static final blacklist FLAG_INCLUDE_INVISIBLE_VIEW_GROUP_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "android.service.autofill.include_invisible_view_group_in_assist_structure"

.field public static final blacklist FLAG_METRICS_FIXES:Ljava/lang/String; = "android.service.autofill.metrics_fixes"

.field public static final blacklist FLAG_MULTIPLE_FILL_HISTORY:Ljava/lang/String; = "android.service.autofill.multiple_fill_history"

.field public static final blacklist FLAG_RELAYOUT:Ljava/lang/String; = "android.service.autofill.relayout"

.field public static final blacklist FLAG_RELAYOUT_FIX:Ljava/lang/String; = "android.service.autofill.relayout_fix"

.field public static final blacklist FLAG_REMOTE_FILL_SERVICE_USE_WEAK_REFERENCE:Ljava/lang/String; = "android.service.autofill.remote_fill_service_use_weak_reference"

.field public static final blacklist FLAG_TEST:Ljava/lang/String; = "android.service.autofill.test"

.field public static final blacklist FLAG_TEST_FLAG:Ljava/lang/String; = "android.service.autofill.test_flag"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 215
    new-instance v0, Landroid/service/autofill/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/service/autofill/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addAccessibilityTitleForAugmentedAutofillDropdown()Z
    .registers 1

    .line 58
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->addAccessibilityTitleForAugmentedAutofillDropdown()Z

    move-result v0

    return v0
.end method

.method public static greylist addLastFocusedIdToClientState()Z
    .registers 1

    .line 65
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->addLastFocusedIdToClientState()Z

    move-result v0

    return v0
.end method

.method public static greylist addLastFocusedIdToFillEventHistory()Z
    .registers 1

    .line 72
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->addLastFocusedIdToFillEventHistory()Z

    move-result v0

    return v0
.end method

.method public static greylist addSessionIdToClientState()Z
    .registers 1

    .line 79
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->addSessionIdToClientState()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillCredmanDevIntegration()Z
    .registers 1

    .line 86
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillCredmanDevIntegration()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillCredmanIntegration()Z
    .registers 1

    .line 93
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillCredmanIntegration()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillCredmanIntegrationPhase2()Z
    .registers 1

    .line 100
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillCredmanIntegrationPhase2()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillSessionDestroyed()Z
    .registers 1

    .line 107
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillSessionDestroyed()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillWMetrics()Z
    .registers 1

    .line 114
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillWMetrics()Z

    move-result v0

    return v0
.end method

.method public static greylist fillDialogImprovements()Z
    .registers 1

    .line 121
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->fillDialogImprovements()Z

    move-result v0

    return v0
.end method

.method public static greylist fillDialogImprovementsImpl()Z
    .registers 1

    .line 128
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->fillDialogImprovementsImpl()Z

    move-result v0

    return v0
.end method

.method public static greylist fillFieldsFromCurrentSessionOnly()Z
    .registers 1

    .line 135
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->fillFieldsFromCurrentSessionOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist fixGetAutofillComponent()Z
    .registers 1

    .line 142
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->fixGetAutofillComponent()Z

    move-result v0

    return v0
.end method

.method public static greylist highlightAutofillSingleField()Z
    .registers 1

    .line 149
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->highlightAutofillSingleField()Z

    move-result v0

    return v0
.end method

.method public static greylist improveFillDialogAconfig()Z
    .registers 1

    .line 156
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->improveFillDialogAconfig()Z

    move-result v0

    return v0
.end method

.method public static greylist includeInvisibleViewGroupInAssistStructure()Z
    .registers 1

    .line 163
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->includeInvisibleViewGroupInAssistStructure()Z

    move-result v0

    return v0
.end method

.method public static greylist metricsFixes()Z
    .registers 1

    .line 170
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->metricsFixes()Z

    move-result v0

    return v0
.end method

.method public static greylist multipleFillHistory()Z
    .registers 1

    .line 177
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->multipleFillHistory()Z

    move-result v0

    return v0
.end method

.method public static greylist relayout()Z
    .registers 1

    .line 184
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->relayout()Z

    move-result v0

    return v0
.end method

.method public static greylist relayoutFix()Z
    .registers 1

    .line 191
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->relayoutFix()Z

    move-result v0

    return v0
.end method

.method public static greylist remoteFillServiceUseWeakReference()Z
    .registers 1

    .line 198
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->remoteFillServiceUseWeakReference()Z

    move-result v0

    return v0
.end method

.method public static greylist test()Z
    .registers 1

    .line 205
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->test()Z

    move-result v0

    return v0
.end method

.method public static greylist testFlag()Z
    .registers 1

    .line 212
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->testFlag()Z

    move-result v0

    return v0
.end method
