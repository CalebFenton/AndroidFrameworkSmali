.class public final Landroid/providers/settings/GlobalSettingsProto$Wifi;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Wifi"
.end annotation


# static fields
.field public static final blacklist BADGING_THRESHOLDS:J = 0x10b00000002L

.field public static final blacklist BOUNCE_DELAY_OVERRIDE_MS:J = 0x10b00000022L

.field public static final blacklist COUNTRY_CODE:J = 0x10b00000009L

.field public static final blacklist DEVICE_OWNER_CONFIGS_LOCKDOWN:J = 0x10b0000001cL

.field public static final blacklist DISPLAY_CERTIFICATION_ON:J = 0x10b00000004L

.field public static final blacklist DISPLAY_ON:J = 0x10b00000003L

.field public static final blacklist DISPLAY_WPS_CONFIG:J = 0x10b00000005L

.field public static final blacklist ENHANCED_AUTO_JOIN:J = 0x10b00000012L

.field public static final blacklist EPHEMERAL_OUT_OF_RANGE_TIMEOUT_MS:J = 0x10b00000020L

.field public static final blacklist FRAMEWORK_SCAN_INTERVAL_MS:J = 0x10b0000000aL

.field public static final blacklist FREQUENCY_BAND:J = 0x10b0000001dL

.field public static final blacklist IDLE_MS:J = 0x10b0000000bL

.field public static final blacklist MAX_DHCP_RETRY_COUNT:J = 0x10b0000001aL

.field public static final blacklist MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:J = 0x10b0000001bL

.field public static final blacklist NETWORKS_AVAILABLE_NOTIFICATION_ON:J = 0x10b00000006L

.field public static final blacklist NETWORKS_AVAILABLE_REPEAT_DELAY:J = 0x10b00000008L

.field public static final blacklist NETWORK_SHOW_RSSI:J = 0x10b00000013L

.field public static final blacklist NUM_OPEN_NETWORKS_KEPT:J = 0x10b0000000cL

.field public static final blacklist ON:J = 0x10b0000000dL

.field public static final blacklist ON_WHEN_PROXY_DISCONNECTED:J = 0x10b00000021L

.field public static final blacklist P2P_DEVICE_NAME:J = 0x10b0000001eL

.field public static final blacklist SAVED_STATE:J = 0x10b00000010L

.field public static final blacklist SCAN_ALWAYS_AVAILABLE:J = 0x10b0000000eL

.field public static final blacklist SCAN_INTERVAL_WHEN_P2P_CONNECTED_MS:J = 0x10b00000014L

.field public static final blacklist SLEEP_POLICY:J = 0x10b00000001L

.field public static final blacklist SUPPLICANT_SCAN_INTERVAL_MS:J = 0x10b00000011L

.field public static final blacklist SUSPEND_OPTIMIZATIONS_ENABLED:J = 0x10b00000017L

.field public static final blacklist VERBOSE_LOGGING_ENABLED:J = 0x10b00000018L

.field public static final blacklist WAKEUP_ENABLED:J = 0x10b0000000fL

.field public static final blacklist WATCHDOG_ON:J = 0x10b00000015L

.field public static final blacklist WATCHDOG_POOR_NETWORK_TEST_ENABLED:J = 0x10b00000016L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
