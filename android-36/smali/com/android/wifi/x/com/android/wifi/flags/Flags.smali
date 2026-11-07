.class public final Lcom/android/wifi/x/com/android/wifi/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ANDROID_V_WIFI_API:Ljava/lang/String; = "com.android.wifi.flags.android_v_wifi_api"

.field public static final blacklist FLAG_ANQP_REQUEST_WAIT_FOR_RESPONSE:Ljava/lang/String; = "com.android.wifi.flags.anqp_request_wait_for_response"

.field public static final blacklist FLAG_AP_ISOLATE:Ljava/lang/String; = "com.android.wifi.flags.ap_isolate"

.field public static final blacklist FLAG_AUTOJOIN_RESTRICTION_SECURITY_TYPES_API:Ljava/lang/String; = "com.android.wifi.flags.autojoin_restriction_security_types_api"

.field public static final blacklist FLAG_AWARE_PAIRING:Ljava/lang/String; = "com.android.wifi.flags.aware_pairing"

.field public static final blacklist FLAG_BSSID_BLOCKLIST_FOR_SUGGESTION:Ljava/lang/String; = "com.android.wifi.flags.bssid_blocklist_for_suggestion"

.field public static final blacklist FLAG_D2D_WHEN_INFRA_STA_OFF:Ljava/lang/String; = "com.android.wifi.flags.d2d_when_infra_sta_off"

.field public static final blacklist FLAG_DELAYED_CARRIER_NETWORK_SELECTION:Ljava/lang/String; = "com.android.wifi.flags.delayed_carrier_network_selection"

.field public static final blacklist FLAG_DELAY_SAVE_TO_STORE:Ljava/lang/String; = "com.android.wifi.flags.delay_save_to_store"

.field public static final blacklist FLAG_GET_BSSID_BLOCKLIST_API:Ljava/lang/String; = "com.android.wifi.flags.get_bssid_blocklist_api"

.field public static final blacklist FLAG_GET_CHANNEL_WIDTH_API:Ljava/lang/String; = "com.android.wifi.flags.get_channel_width_api"

.field public static final blacklist FLAG_LOCAL_ONLY_CONNECTION_OPTIMIZATION:Ljava/lang/String; = "com.android.wifi.flags.local_only_connection_optimization"

.field public static final blacklist FLAG_MAINLINE_SUPPLICANT:Ljava/lang/String; = "com.android.wifi.flags.mainline_supplicant"

.field public static final blacklist FLAG_MLO_SAP:Ljava/lang/String; = "com.android.wifi.flags.mlo_sap"

.field public static final blacklist FLAG_MONITOR_INTENT_FOR_ALL_USERS:Ljava/lang/String; = "com.android.wifi.flags.monitor_intent_for_all_users"

.field public static final blacklist FLAG_MULTIPLE_MLD_ON_SAP_SUPPORTED:Ljava/lang/String; = "com.android.wifi.flags.multiple_mld_on_sap_supported"

.field public static final blacklist FLAG_NETWORK_PROVIDER_BATTERY_CHARGING_STATUS:Ljava/lang/String; = "com.android.wifi.flags.network_provider_battery_charging_status"

.field public static final blacklist FLAG_NEW_URI_PARSING_FOR_ESCAPE_CHARACTER:Ljava/lang/String; = "com.android.wifi.flags.new_uri_parsing_for_escape_character"

.field public static final blacklist FLAG_P2P_DIALOG2:Ljava/lang/String; = "com.android.wifi.flags.p2p_dialog2"

.field public static final blacklist FLAG_PUBLIC_BANDS_FOR_LOHS:Ljava/lang/String; = "com.android.wifi.flags.public_bands_for_lohs"

.field public static final blacklist FLAG_RSN_OVERRIDING:Ljava/lang/String; = "com.android.wifi.flags.rsn_overriding"

.field public static final blacklist FLAG_SECURE_RANGING:Ljava/lang/String; = "com.android.wifi.flags.secure_ranging"

.field public static final blacklist FLAG_SHARED_CONNECTIVITY_BROADCAST_RECEIVER_TEST_API:Ljava/lang/String; = "com.android.wifi.flags.shared_connectivity_broadcast_receiver_test_api"

.field public static final blacklist FLAG_SINGLE_WIFI_THREAD:Ljava/lang/String; = "com.android.wifi.flags.single_wifi_thread"

.field public static final blacklist FLAG_SOFTAP_CONFIG_STORE_MAX_CHANNEL_WIDTH:Ljava/lang/String; = "com.android.wifi.flags.softap_config_store_max_channel_width"

.field public static final blacklist FLAG_SOFTAP_DISCONNECT_REASON:Ljava/lang/String; = "com.android.wifi.flags.softap_disconnect_reason"

.field public static final blacklist FLAG_TEST_FLAG_FUNCTION:Ljava/lang/String; = "com.android.wifi.flags.test_flag_function"

.field public static final blacklist FLAG_VOIP_DETECTION_BUGFIX:Ljava/lang/String; = "com.android.wifi.flags.voip_detection_bugfix"

.field public static final blacklist FLAG_WEP_DISABLED_IN_APM:Ljava/lang/String; = "com.android.wifi.flags.wep_disabled_in_apm"

.field public static final blacklist FLAG_WIFI_DIRECT_R2:Ljava/lang/String; = "com.android.wifi.flags.wifi_direct_r2"

.field public static final blacklist FLAG_WIFI_SCORER_NEW_STATS_COLLECTION:Ljava/lang/String; = "com.android.wifi.flags.wifi_scorer_new_stats_collection"

.field public static final blacklist FLAG_WIFI_STATE_CHANGED_LISTENER:Ljava/lang/String; = "com.android.wifi.flags.wifi_state_changed_listener"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 296
    new-instance v0, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist androidVWifiApi()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->androidVWifiApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist anqpRequestWaitForResponse()Z
    .registers 1

    .line 83
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->anqpRequestWaitForResponse()Z

    move-result v0

    return v0
.end method

.method public static blacklist apIsolate()Z
    .registers 1

    .line 90
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->apIsolate()Z

    move-result v0

    return v0
.end method

.method public static blacklist autojoinRestrictionSecurityTypesApi()Z
    .registers 1

    .line 97
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->autojoinRestrictionSecurityTypesApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist awarePairing()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->awarePairing()Z

    move-result v0

    return v0
.end method

.method public static blacklist bssidBlocklistForSuggestion()Z
    .registers 1

    .line 111
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->bssidBlocklistForSuggestion()Z

    move-result v0

    return v0
.end method

.method public static blacklist d2dWhenInfraStaOff()Z
    .registers 1

    .line 118
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->d2dWhenInfraStaOff()Z

    move-result v0

    return v0
.end method

.method public static blacklist delaySaveToStore()Z
    .registers 1

    .line 125
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->delaySaveToStore()Z

    move-result v0

    return v0
.end method

.method public static blacklist delayedCarrierNetworkSelection()Z
    .registers 1

    .line 132
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->delayedCarrierNetworkSelection()Z

    move-result v0

    return v0
.end method

.method public static blacklist getBssidBlocklistApi()Z
    .registers 1

    .line 139
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->getBssidBlocklistApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist getChannelWidthApi()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->getChannelWidthApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist localOnlyConnectionOptimization()Z
    .registers 1

    .line 153
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->localOnlyConnectionOptimization()Z

    move-result v0

    return v0
.end method

.method public static blacklist mainlineSupplicant()Z
    .registers 1

    .line 160
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->mainlineSupplicant()Z

    move-result v0

    return v0
.end method

.method public static blacklist mloSap()Z
    .registers 1

    .line 167
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->mloSap()Z

    move-result v0

    return v0
.end method

.method public static blacklist monitorIntentForAllUsers()Z
    .registers 1

    .line 174
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->monitorIntentForAllUsers()Z

    move-result v0

    return v0
.end method

.method public static blacklist multipleMldOnSapSupported()Z
    .registers 1

    .line 181
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->multipleMldOnSapSupported()Z

    move-result v0

    return v0
.end method

.method public static blacklist networkProviderBatteryChargingStatus()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->networkProviderBatteryChargingStatus()Z

    move-result v0

    return v0
.end method

.method public static blacklist newUriParsingForEscapeCharacter()Z
    .registers 1

    .line 195
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->newUriParsingForEscapeCharacter()Z

    move-result v0

    return v0
.end method

.method public static blacklist p2pDialog2()Z
    .registers 1

    .line 202
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->p2pDialog2()Z

    move-result v0

    return v0
.end method

.method public static blacklist publicBandsForLohs()Z
    .registers 1

    .line 209
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->publicBandsForLohs()Z

    move-result v0

    return v0
.end method

.method public static blacklist rsnOverriding()Z
    .registers 1

    .line 216
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->rsnOverriding()Z

    move-result v0

    return v0
.end method

.method public static blacklist secureRanging()Z
    .registers 1

    .line 223
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->secureRanging()Z

    move-result v0

    return v0
.end method

.method public static blacklist sharedConnectivityBroadcastReceiverTestApi()Z
    .registers 1

    .line 230
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->sharedConnectivityBroadcastReceiverTestApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist singleWifiThread()Z
    .registers 1

    .line 237
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->singleWifiThread()Z

    move-result v0

    return v0
.end method

.method public static blacklist softapConfigStoreMaxChannelWidth()Z
    .registers 1

    .line 244
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->softapConfigStoreMaxChannelWidth()Z

    move-result v0

    return v0
.end method

.method public static blacklist softapDisconnectReason()Z
    .registers 1

    .line 251
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->softapDisconnectReason()Z

    move-result v0

    return v0
.end method

.method public static blacklist testFlagFunction()Z
    .registers 1

    .line 258
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->testFlagFunction()Z

    move-result v0

    return v0
.end method

.method public static blacklist voipDetectionBugfix()Z
    .registers 1

    .line 265
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->voipDetectionBugfix()Z

    move-result v0

    return v0
.end method

.method public static blacklist wepDisabledInApm()Z
    .registers 1

    .line 272
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->wepDisabledInApm()Z

    move-result v0

    return v0
.end method

.method public static blacklist wifiDirectR2()Z
    .registers 1

    .line 279
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->wifiDirectR2()Z

    move-result v0

    return v0
.end method

.method public static blacklist wifiScorerNewStatsCollection()Z
    .registers 1

    .line 286
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->wifiScorerNewStatsCollection()Z

    move-result v0

    return v0
.end method

.method public static blacklist wifiStateChangedListener()Z
    .registers 1

    .line 293
    sget-object v0, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/com/android/wifi/flags/FeatureFlags;->wifiStateChangedListener()Z

    move-result v0

    return v0
.end method
