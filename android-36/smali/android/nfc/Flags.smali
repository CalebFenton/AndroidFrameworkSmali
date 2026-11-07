.class public final Landroid/nfc/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/nfc/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_CARD_EMULATION_EUICC:Ljava/lang/String; = "android.nfc.enable_card_emulation_euicc"

.field public static final blacklist FLAG_ENABLE_NFC_CHARGING:Ljava/lang/String; = "android.nfc.enable_nfc_charging"

.field public static final blacklist FLAG_ENABLE_NFC_MAINLINE:Ljava/lang/String; = "android.nfc.enable_nfc_mainline"

.field public static final blacklist FLAG_ENABLE_NFC_READER_OPTION:Ljava/lang/String; = "android.nfc.enable_nfc_reader_option"

.field public static final blacklist FLAG_ENABLE_NFC_SET_DISCOVERY_TECH:Ljava/lang/String; = "android.nfc.enable_nfc_set_discovery_tech"

.field public static final blacklist FLAG_ENABLE_NFC_USER_RESTRICTION:Ljava/lang/String; = "android.nfc.enable_nfc_user_restriction"

.field public static final blacklist FLAG_ENABLE_TAG_DETECTION_BROADCASTS:Ljava/lang/String; = "android.nfc.enable_tag_detection_broadcasts"

.field public static final blacklist FLAG_NFC_ACTION_MANAGE_SERVICES_SETTINGS:Ljava/lang/String; = "android.nfc.nfc_action_manage_services_settings"

.field public static final blacklist FLAG_NFC_APDU_SERVICE_INFO_CONSTRUCTOR:Ljava/lang/String; = "android.nfc.nfc_apdu_service_info_constructor"

.field public static final blacklist FLAG_NFC_ASSOCIATED_ROLE_SERVICES:Ljava/lang/String; = "android.nfc.nfc_associated_role_services"

.field public static final blacklist FLAG_NFC_CHECK_TAG_INTENT_PREFERENCE:Ljava/lang/String; = "android.nfc.nfc_check_tag_intent_preference"

.field public static final blacklist FLAG_NFC_EVENT_LISTENER:Ljava/lang/String; = "android.nfc.nfc_event_listener"

.field public static final blacklist FLAG_NFC_OBSERVE_MODE:Ljava/lang/String; = "android.nfc.nfc_observe_mode"

.field public static final blacklist FLAG_NFC_OBSERVE_MODE_ST_SHIM:Ljava/lang/String; = "android.nfc.nfc_observe_mode_st_shim"

.field public static final blacklist FLAG_NFC_OEM_EXTENSION:Ljava/lang/String; = "android.nfc.nfc_oem_extension"

.field public static final blacklist FLAG_NFC_OVERRIDE_RECOVER_ROUTING_TABLE:Ljava/lang/String; = "android.nfc.nfc_override_recover_routing_table"

.field public static final blacklist FLAG_NFC_PERSIST_LOG:Ljava/lang/String; = "android.nfc.nfc_persist_log"

.field public static final blacklist FLAG_NFC_READ_POLLING_LOOP:Ljava/lang/String; = "android.nfc.nfc_read_polling_loop"

.field public static final blacklist FLAG_NFC_READ_POLLING_LOOP_ST_SHIM:Ljava/lang/String; = "android.nfc.nfc_read_polling_loop_st_shim"

.field public static final blacklist FLAG_NFC_SET_DEFAULT_DISC_TECH:Ljava/lang/String; = "android.nfc.nfc_set_default_disc_tech"

.field public static final blacklist FLAG_NFC_SET_SERVICE_ENABLED_FOR_CATEGORY_OTHER:Ljava/lang/String; = "android.nfc.nfc_set_service_enabled_for_category_other"

.field public static final blacklist FLAG_NFC_STATE_CHANGE:Ljava/lang/String; = "android.nfc.nfc_state_change"

.field public static final blacklist FLAG_NFC_STATE_CHANGE_SECURITY_LOG_EVENT_ENABLED:Ljava/lang/String; = "android.nfc.nfc_state_change_security_log_event_enabled"

.field public static final blacklist FLAG_NFC_VENDOR_CMD:Ljava/lang/String; = "android.nfc.nfc_vendor_cmd"

.field public static final blacklist FLAG_NFC_WATCHDOG:Ljava/lang/String; = "android.nfc.nfc_watchdog"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 233
    new-instance v0, Landroid/nfc/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/nfc/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableCardEmulationEuicc()Z
    .registers 1

    .line 62
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableCardEmulationEuicc()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNfcCharging()Z
    .registers 1

    .line 69
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcCharging()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNfcMainline()Z
    .registers 1

    .line 76
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcMainline()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNfcReaderOption()Z
    .registers 1

    .line 83
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcReaderOption()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNfcSetDiscoveryTech()Z
    .registers 1

    .line 90
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcSetDiscoveryTech()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNfcUserRestriction()Z
    .registers 1

    .line 97
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcUserRestriction()Z

    move-result v0

    return v0
.end method

.method public static greylist enableTagDetectionBroadcasts()Z
    .registers 1

    .line 104
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableTagDetectionBroadcasts()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcActionManageServicesSettings()Z
    .registers 1

    .line 111
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcActionManageServicesSettings()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcApduServiceInfoConstructor()Z
    .registers 1

    .line 118
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcApduServiceInfoConstructor()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcAssociatedRoleServices()Z
    .registers 1

    .line 125
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcAssociatedRoleServices()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcCheckTagIntentPreference()Z
    .registers 1

    .line 132
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcCheckTagIntentPreference()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcEventListener()Z
    .registers 1

    .line 139
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcEventListener()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcObserveMode()Z
    .registers 1

    .line 146
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcObserveMode()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcObserveModeStShim()Z
    .registers 1

    .line 153
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcObserveModeStShim()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcOemExtension()Z
    .registers 1

    .line 160
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcOemExtension()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcOverrideRecoverRoutingTable()Z
    .registers 1

    .line 167
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcOverrideRecoverRoutingTable()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcPersistLog()Z
    .registers 1

    .line 174
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcPersistLog()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcReadPollingLoop()Z
    .registers 1

    .line 181
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcReadPollingLoop()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcReadPollingLoopStShim()Z
    .registers 1

    .line 188
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcReadPollingLoopStShim()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcSetDefaultDiscTech()Z
    .registers 1

    .line 195
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcSetDefaultDiscTech()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcSetServiceEnabledForCategoryOther()Z
    .registers 1

    .line 202
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcSetServiceEnabledForCategoryOther()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcStateChange()Z
    .registers 1

    .line 209
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcStateChange()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcStateChangeSecurityLogEventEnabled()Z
    .registers 1

    .line 216
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcStateChangeSecurityLogEventEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcVendorCmd()Z
    .registers 1

    .line 223
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcVendorCmd()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcWatchdog()Z
    .registers 1

    .line 230
    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcWatchdog()Z

    move-result v0

    return v0
.end method
