.class public Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;",
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
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v1, Ljava/util/HashSet;

    const-string v33, "com.android.wifi.flags.wifi_state_changed_listener"

    const-string v34, ""

    const-string v2, "com.android.wifi.flags.android_v_wifi_api"

    const-string v3, "com.android.wifi.flags.anqp_request_wait_for_response"

    const-string v4, "com.android.wifi.flags.ap_isolate"

    const-string v5, "com.android.wifi.flags.autojoin_restriction_security_types_api"

    const-string v6, "com.android.wifi.flags.aware_pairing"

    const-string v7, "com.android.wifi.flags.bssid_blocklist_for_suggestion"

    const-string v8, "com.android.wifi.flags.d2d_when_infra_sta_off"

    const-string v9, "com.android.wifi.flags.delay_save_to_store"

    const-string v10, "com.android.wifi.flags.delayed_carrier_network_selection"

    const-string v11, "com.android.wifi.flags.get_bssid_blocklist_api"

    const-string v12, "com.android.wifi.flags.get_channel_width_api"

    const-string v13, "com.android.wifi.flags.local_only_connection_optimization"

    const-string v14, "com.android.wifi.flags.mainline_supplicant"

    const-string v15, "com.android.wifi.flags.mlo_sap"

    const-string v16, "com.android.wifi.flags.monitor_intent_for_all_users"

    const-string v17, "com.android.wifi.flags.multiple_mld_on_sap_supported"

    const-string v18, "com.android.wifi.flags.network_provider_battery_charging_status"

    const-string v19, "com.android.wifi.flags.new_uri_parsing_for_escape_character"

    const-string v20, "com.android.wifi.flags.p2p_dialog2"

    const-string v21, "com.android.wifi.flags.public_bands_for_lohs"

    const-string v22, "com.android.wifi.flags.rsn_overriding"

    const-string v23, "com.android.wifi.flags.secure_ranging"

    const-string v24, "com.android.wifi.flags.shared_connectivity_broadcast_receiver_test_api"

    const-string v25, "com.android.wifi.flags.single_wifi_thread"

    const-string v26, "com.android.wifi.flags.softap_config_store_max_channel_width"

    const-string v27, "com.android.wifi.flags.softap_disconnect_reason"

    const-string v28, "com.android.wifi.flags.test_flag_function"

    const-string v29, "com.android.wifi.flags.voip_detection_bugfix"

    const-string v30, "com.android.wifi.flags.wep_disabled_in_apm"

    const-string v31, "com.android.wifi.flags.wifi_direct_r2"

    const-string v32, "com.android.wifi.flags.wifi_scorer_new_stats_collection"

    filled-new-array/range {v2 .. v34}, [Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 253
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist androidVWifiApi()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.wifi.flags.android_v_wifi_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist anqpRequestWaitForResponse()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.wifi.flags.anqp_request_wait_for_response"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist apIsolate()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.wifi.flags.ap_isolate"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autojoinRestrictionSecurityTypesApi()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.wifi.flags.autojoin_restriction_security_types_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist awarePairing()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.wifi.flags.aware_pairing"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bssidBlocklistForSuggestion()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.wifi.flags.bssid_blocklist_for_suggestion"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist d2dWhenInfraStaOff()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.wifi.flags.d2d_when_infra_sta_off"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist delaySaveToStore()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.wifi.flags.delay_save_to_store"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist delayedCarrierNetworkSelection()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.wifi.flags.delayed_carrier_network_selection"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getBssidBlocklistApi()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.wifi.flags.get_bssid_blocklist_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getChannelWidthApi()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.wifi.flags.get_channel_width_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    const-string v31, "com.android.wifi.flags.wifi_scorer_new_stats_collection"

    const-string v32, "com.android.wifi.flags.wifi_state_changed_listener"

    const-string v1, "com.android.wifi.flags.android_v_wifi_api"

    const-string v2, "com.android.wifi.flags.anqp_request_wait_for_response"

    const-string v3, "com.android.wifi.flags.ap_isolate"

    const-string v4, "com.android.wifi.flags.autojoin_restriction_security_types_api"

    const-string v5, "com.android.wifi.flags.aware_pairing"

    const-string v6, "com.android.wifi.flags.bssid_blocklist_for_suggestion"

    const-string v7, "com.android.wifi.flags.d2d_when_infra_sta_off"

    const-string v8, "com.android.wifi.flags.delay_save_to_store"

    const-string v9, "com.android.wifi.flags.delayed_carrier_network_selection"

    const-string v10, "com.android.wifi.flags.get_bssid_blocklist_api"

    const-string v11, "com.android.wifi.flags.get_channel_width_api"

    const-string v12, "com.android.wifi.flags.local_only_connection_optimization"

    const-string v13, "com.android.wifi.flags.mainline_supplicant"

    const-string v14, "com.android.wifi.flags.mlo_sap"

    const-string v15, "com.android.wifi.flags.monitor_intent_for_all_users"

    const-string v16, "com.android.wifi.flags.multiple_mld_on_sap_supported"

    const-string v17, "com.android.wifi.flags.network_provider_battery_charging_status"

    const-string v18, "com.android.wifi.flags.new_uri_parsing_for_escape_character"

    const-string v19, "com.android.wifi.flags.p2p_dialog2"

    const-string v20, "com.android.wifi.flags.public_bands_for_lohs"

    const-string v21, "com.android.wifi.flags.rsn_overriding"

    const-string v22, "com.android.wifi.flags.secure_ranging"

    const-string v23, "com.android.wifi.flags.shared_connectivity_broadcast_receiver_test_api"

    const-string v24, "com.android.wifi.flags.single_wifi_thread"

    const-string v25, "com.android.wifi.flags.softap_config_store_max_channel_width"

    const-string v26, "com.android.wifi.flags.softap_disconnect_reason"

    const-string v27, "com.android.wifi.flags.test_flag_function"

    const-string v28, "com.android.wifi.flags.voip_detection_bugfix"

    const-string v29, "com.android.wifi.flags.wep_disabled_in_apm"

    const-string v30, "com.android.wifi.flags.wifi_direct_r2"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

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
            "Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 257
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 245
    invoke-direct {p0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 246
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist localOnlyConnectionOptimization()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.wifi.flags.local_only_connection_optimization"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mainlineSupplicant()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.wifi.flags.mainline_supplicant"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mloSap()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.wifi.flags.mlo_sap"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist monitorIntentForAllUsers()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.wifi.flags.monitor_intent_for_all_users"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist multipleMldOnSapSupported()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.wifi.flags.multiple_mld_on_sap_supported"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist networkProviderBatteryChargingStatus()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.wifi.flags.network_provider_battery_charging_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist newUriParsingForEscapeCharacter()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.wifi.flags.new_uri_parsing_for_escape_character"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist p2pDialog2()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.wifi.flags.p2p_dialog2"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist publicBandsForLohs()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.wifi.flags.public_bands_for_lohs"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rsnOverriding()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.wifi.flags.rsn_overriding"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist secureRanging()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.wifi.flags.secure_ranging"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sharedConnectivityBroadcastReceiverTestApi()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.wifi.flags.shared_connectivity_broadcast_receiver_test_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist singleWifiThread()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.wifi.flags.single_wifi_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist softapConfigStoreMaxChannelWidth()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.wifi.flags.softap_config_store_max_channel_width"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist softapDisconnectReason()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.wifi.flags.softap_disconnect_reason"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist testFlagFunction()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.wifi.flags.test_flag_function"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist voipDetectionBugfix()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.wifi.flags.voip_detection_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wepDisabledInApm()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.wifi.flags.wep_disabled_in_apm"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wifiDirectR2()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.wifi.flags.wifi_direct_r2"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wifiScorerNewStatsCollection()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.wifi.flags.wifi_scorer_new_stats_collection"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wifiStateChangedListener()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.wifi.flags.wifi_state_changed_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/com/android/wifi/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
