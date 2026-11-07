.class public Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/nfc/x/android/nfc/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/nfc/x/android/nfc/FeatureFlags;",
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
            "Lcom/android/nfc/x/android/nfc/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/nfc/x/android/nfc/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v1, Ljava/util/HashSet;

    const-string v26, "android.nfc.nfc_watchdog"

    const-string v27, ""

    const-string v2, "android.nfc.enable_card_emulation_euicc"

    const-string v3, "android.nfc.enable_nfc_charging"

    const-string v4, "android.nfc.enable_nfc_mainline"

    const-string v5, "android.nfc.enable_nfc_reader_option"

    const-string v6, "android.nfc.enable_nfc_set_discovery_tech"

    const-string v7, "android.nfc.enable_nfc_user_restriction"

    const-string v8, "android.nfc.enable_tag_detection_broadcasts"

    const-string v9, "android.nfc.nfc_action_manage_services_settings"

    const-string v10, "android.nfc.nfc_apdu_service_info_constructor"

    const-string v11, "android.nfc.nfc_associated_role_services"

    const-string v12, "android.nfc.nfc_check_tag_intent_preference"

    const-string v13, "android.nfc.nfc_event_listener"

    const-string v14, "android.nfc.nfc_observe_mode"

    const-string v15, "android.nfc.nfc_observe_mode_st_shim"

    const-string v16, "android.nfc.nfc_oem_extension"

    const-string v17, "android.nfc.nfc_override_recover_routing_table"

    const-string v18, "android.nfc.nfc_persist_log"

    const-string v19, "android.nfc.nfc_read_polling_loop"

    const-string v20, "android.nfc.nfc_read_polling_loop_st_shim"

    const-string v21, "android.nfc.nfc_set_default_disc_tech"

    const-string v22, "android.nfc.nfc_set_service_enabled_for_category_other"

    const-string v23, "android.nfc.nfc_state_change"

    const-string v24, "android.nfc.nfc_state_change_security_log_event_enabled"

    const-string v25, "android.nfc.nfc_vendor_cmd"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

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
.method public blacklist enableCardEmulationEuicc()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.nfc.enable_card_emulation_euicc"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcCharging()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.nfc.enable_nfc_charging"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcMainline()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.nfc.enable_nfc_mainline"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcReaderOption()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.nfc.enable_nfc_reader_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcSetDiscoveryTech()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.nfc.enable_nfc_set_discovery_tech"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcUserRestriction()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.nfc.enable_nfc_user_restriction"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTagDetectionBroadcasts()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.nfc.enable_tag_detection_broadcasts"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
    const-string v24, "android.nfc.nfc_vendor_cmd"

    const-string v25, "android.nfc.nfc_watchdog"

    const-string v1, "android.nfc.enable_card_emulation_euicc"

    const-string v2, "android.nfc.enable_nfc_charging"

    const-string v3, "android.nfc.enable_nfc_mainline"

    const-string v4, "android.nfc.enable_nfc_reader_option"

    const-string v5, "android.nfc.enable_nfc_set_discovery_tech"

    const-string v6, "android.nfc.enable_nfc_user_restriction"

    const-string v7, "android.nfc.enable_tag_detection_broadcasts"

    const-string v8, "android.nfc.nfc_action_manage_services_settings"

    const-string v9, "android.nfc.nfc_apdu_service_info_constructor"

    const-string v10, "android.nfc.nfc_associated_role_services"

    const-string v11, "android.nfc.nfc_check_tag_intent_preference"

    const-string v12, "android.nfc.nfc_event_listener"

    const-string v13, "android.nfc.nfc_observe_mode"

    const-string v14, "android.nfc.nfc_observe_mode_st_shim"

    const-string v15, "android.nfc.nfc_oem_extension"

    const-string v16, "android.nfc.nfc_override_recover_routing_table"

    const-string v17, "android.nfc.nfc_persist_log"

    const-string v18, "android.nfc.nfc_read_polling_loop"

    const-string v19, "android.nfc.nfc_read_polling_loop_st_shim"

    const-string v20, "android.nfc.nfc_set_default_disc_tech"

    const-string v21, "android.nfc.nfc_set_service_enabled_for_category_other"

    const-string v22, "android.nfc.nfc_state_change"

    const-string v23, "android.nfc.nfc_state_change_security_log_event_enabled"

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
            "Lcom/android/nfc/x/android/nfc/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 208
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/nfc/x/android/nfc/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 196
    invoke-direct {p0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->isOptimizationEnabled()Z

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

.method public blacklist nfcActionManageServicesSettings()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.nfc.nfc_action_manage_services_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcApduServiceInfoConstructor()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.nfc.nfc_apdu_service_info_constructor"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcAssociatedRoleServices()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.nfc.nfc_associated_role_services"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcCheckTagIntentPreference()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.nfc.nfc_check_tag_intent_preference"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcEventListener()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.nfc.nfc_event_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcObserveMode()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.nfc.nfc_observe_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcObserveModeStShim()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.nfc.nfc_observe_mode_st_shim"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcOemExtension()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.nfc.nfc_oem_extension"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcOverrideRecoverRoutingTable()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.nfc.nfc_override_recover_routing_table"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcPersistLog()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.nfc.nfc_persist_log"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcReadPollingLoop()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.nfc.nfc_read_polling_loop"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcReadPollingLoopStShim()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.nfc.nfc_read_polling_loop_st_shim"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcSetDefaultDiscTech()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.nfc.nfc_set_default_disc_tech"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcSetServiceEnabledForCategoryOther()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.nfc.nfc_set_service_enabled_for_category_other"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcStateChange()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.nfc.nfc_state_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcStateChangeSecurityLogEventEnabled()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.nfc.nfc_state_change_security_log_event_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcVendorCmd()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.nfc.nfc_vendor_cmd"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcWatchdog()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.nfc.nfc_watchdog"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
