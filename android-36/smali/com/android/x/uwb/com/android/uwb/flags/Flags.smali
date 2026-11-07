.class public final Lcom/android/x/uwb/com/android/uwb/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CR423_CLEANUP_INTERVAL_SCHEDULING:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.cr423_cleanup_interval_scheduling"

.field public static final blacklist FLAG_DATA_TRANSFER_PHASE_CONFIG:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.data_transfer_phase_config"

.field public static final blacklist FLAG_HW_STATE:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.hw_state"

.field public static final blacklist FLAG_HYBRID_SESSION_SUPPORT:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.hybrid_session_support"

.field public static final blacklist FLAG_PARSE_CAP_TLV_RUST_USES_UWBS_UCI_VERSION:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.parse_cap_tlv_rust_uses_uwbs_uci_version"

.field public static final blacklist FLAG_QUERY_TIMESTAMP_MICROS:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.query_timestamp_micros"

.field public static final blacklist FLAG_REASON_INBAND_SESSION_STOP:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.reason_inband_session_stop"

.field public static final blacklist FLAG_USE_NETWORK_COUNTRY_ISO:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.use_network_country_iso"

.field public static final blacklist FLAG_USE_UWBS_UCI_VERSION:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.use_uwbs_uci_version"

.field public static final blacklist FLAG_UWB_FIRA_3_0_25Q4:Ljava/lang/String; = "com.android.x.uwb.com.android.uwb.flags.uwb_fira_3_0_25q4"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cr423CleanupIntervalScheduling()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->cr423CleanupIntervalScheduling()Z

    move-result v0

    return v0
.end method

.method public static blacklist dataTransferPhaseConfig()Z
    .registers 1

    .line 39
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->dataTransferPhaseConfig()Z

    move-result v0

    return v0
.end method

.method public static blacklist hwState()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->hwState()Z

    move-result v0

    return v0
.end method

.method public static blacklist hybridSessionSupport()Z
    .registers 1

    .line 53
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->hybridSessionSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist parseCapTlvRustUsesUwbsUciVersion()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->parseCapTlvRustUsesUwbsUciVersion()Z

    move-result v0

    return v0
.end method

.method public static blacklist queryTimestampMicros()Z
    .registers 1

    .line 67
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->queryTimestampMicros()Z

    move-result v0

    return v0
.end method

.method public static blacklist reasonInbandSessionStop()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->reasonInbandSessionStop()Z

    move-result v0

    return v0
.end method

.method public static blacklist useNetworkCountryIso()Z
    .registers 1

    .line 81
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->useNetworkCountryIso()Z

    move-result v0

    return v0
.end method

.method public static blacklist useUwbsUciVersion()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->useUwbsUciVersion()Z

    move-result v0

    return v0
.end method

.method public static blacklist uwbFira3025q4()Z
    .registers 1

    .line 95
    sget-object v0, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->FEATURE_FLAGS:Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/x/uwb/com/android/uwb/flags/FeatureFlags;->uwbFira3025q4()Z

    move-result v0

    return v0
.end method
