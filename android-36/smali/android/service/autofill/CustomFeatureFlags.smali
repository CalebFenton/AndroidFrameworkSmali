.class public Landroid/service/autofill/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/service/autofill/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/service/autofill/FeatureFlags;",
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
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/service/autofill/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/service/autofill/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v1, Ljava/util/HashSet;

    const-string v24, "android.service.autofill.test_flag"

    const-string v25, ""

    const-string v2, "android.service.autofill.add_accessibility_title_for_augmented_autofill_dropdown"

    const-string v3, "android.service.autofill.add_last_focused_id_to_client_state"

    const-string v4, "android.service.autofill.add_last_focused_id_to_fill_event_history"

    const-string v5, "android.service.autofill.add_session_id_to_client_state"

    const-string v6, "android.service.autofill.autofill_credman_dev_integration"

    const-string v7, "android.service.autofill.autofill_credman_integration"

    const-string v8, "android.service.autofill.autofill_credman_integration_phase2"

    const-string v9, "android.service.autofill.autofill_session_destroyed"

    const-string v10, "android.service.autofill.autofill_w_metrics"

    const-string v11, "android.service.autofill.fill_dialog_improvements"

    const-string v12, "android.service.autofill.fill_dialog_improvements_impl"

    const-string v13, "android.service.autofill.fill_fields_from_current_session_only"

    const-string v14, "android.service.autofill.fix_get_autofill_component"

    const-string v15, "android.service.autofill.highlight_autofill_single_field"

    const-string v16, "android.service.autofill.improve_fill_dialog_aconfig"

    const-string v17, "android.service.autofill.include_invisible_view_group_in_assist_structure"

    const-string v18, "android.service.autofill.metrics_fixes"

    const-string v19, "android.service.autofill.multiple_fill_history"

    const-string v20, "android.service.autofill.relayout"

    const-string v21, "android.service.autofill.relayout_fix"

    const-string v22, "android.service.autofill.remote_fill_service_use_weak_reference"

    const-string v23, "android.service.autofill.test"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/service/autofill/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/service/autofill/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 190
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist addAccessibilityTitleForAugmentedAutofillDropdown()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.service.autofill.add_accessibility_title_for_augmented_autofill_dropdown"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist addLastFocusedIdToClientState()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.service.autofill.add_last_focused_id_to_client_state"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist addLastFocusedIdToFillEventHistory()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.service.autofill.add_last_focused_id_to_fill_event_history"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist addSessionIdToClientState()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.service.autofill.add_session_id_to_client_state"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autofillCredmanDevIntegration()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.service.autofill.autofill_credman_dev_integration"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autofillCredmanIntegration()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.service.autofill.autofill_credman_integration"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autofillCredmanIntegrationPhase2()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.service.autofill.autofill_credman_integration_phase2"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autofillSessionDestroyed()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.service.autofill.autofill_session_destroyed"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autofillWMetrics()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.service.autofill.autofill_w_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fillDialogImprovements()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.service.autofill.fill_dialog_improvements"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fillDialogImprovementsImpl()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.service.autofill.fill_dialog_improvements_impl"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fillFieldsFromCurrentSessionOnly()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.service.autofill.fill_fields_from_current_session_only"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixGetAutofillComponent()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.service.autofill.fix_get_autofill_component"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    const-string v22, "android.service.autofill.test"

    const-string v23, "android.service.autofill.test_flag"

    const-string v1, "android.service.autofill.add_accessibility_title_for_augmented_autofill_dropdown"

    const-string v2, "android.service.autofill.add_last_focused_id_to_client_state"

    const-string v3, "android.service.autofill.add_last_focused_id_to_fill_event_history"

    const-string v4, "android.service.autofill.add_session_id_to_client_state"

    const-string v5, "android.service.autofill.autofill_credman_dev_integration"

    const-string v6, "android.service.autofill.autofill_credman_integration"

    const-string v7, "android.service.autofill.autofill_credman_integration_phase2"

    const-string v8, "android.service.autofill.autofill_session_destroyed"

    const-string v9, "android.service.autofill.autofill_w_metrics"

    const-string v10, "android.service.autofill.fill_dialog_improvements"

    const-string v11, "android.service.autofill.fill_dialog_improvements_impl"

    const-string v12, "android.service.autofill.fill_fields_from_current_session_only"

    const-string v13, "android.service.autofill.fix_get_autofill_component"

    const-string v14, "android.service.autofill.highlight_autofill_single_field"

    const-string v15, "android.service.autofill.improve_fill_dialog_aconfig"

    const-string v16, "android.service.autofill.include_invisible_view_group_in_assist_structure"

    const-string v17, "android.service.autofill.metrics_fixes"

    const-string v18, "android.service.autofill.multiple_fill_history"

    const-string v19, "android.service.autofill.relayout"

    const-string v20, "android.service.autofill.relayout_fix"

    const-string v21, "android.service.autofill.remote_fill_service_use_weak_reference"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

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
            "Landroid/service/autofill/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 194
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/service/autofill/FeatureFlags;>;"
    iget-object v0, p0, Landroid/service/autofill/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist highlightAutofillSingleField()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.service.autofill.highlight_autofill_single_field"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist improveFillDialogAconfig()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.service.autofill.improve_fill_dialog_aconfig"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist includeInvisibleViewGroupInAssistStructure()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.service.autofill.include_invisible_view_group_in_assist_structure"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Landroid/service/autofill/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 182
    invoke-direct {p0}, Landroid/service/autofill/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist metricsFixes()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.service.autofill.metrics_fixes"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist multipleFillHistory()Z
    .registers 3

    .line 141
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.service.autofill.multiple_fill_history"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist relayout()Z
    .registers 3

    .line 148
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.service.autofill.relayout"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist relayoutFix()Z
    .registers 3

    .line 155
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.service.autofill.relayout_fix"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist remoteFillServiceUseWeakReference()Z
    .registers 3

    .line 162
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.service.autofill.remote_fill_service_use_weak_reference"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist test()Z
    .registers 3

    .line 169
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.service.autofill.test"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist testFlag()Z
    .registers 3

    .line 176
    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.service.autofill.test_flag"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
