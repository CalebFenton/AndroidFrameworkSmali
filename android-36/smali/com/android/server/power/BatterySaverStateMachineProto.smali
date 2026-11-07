.class public final Lcom/android/server/power/BatterySaverStateMachineProto;
.super Ljava/lang/Object;
.source "BatterySaverStateMachineProto.java"


# static fields
.field public static final blacklist BATTERY_LEVEL:J = 0x10500000007L

.field public static final blacklist BATTERY_STATUS_SET:J = 0x10800000004L

.field public static final blacklist BOOT_COMPLETED:J = 0x10800000002L

.field public static final blacklist DEFAULT_DYNAMIC_DISABLE_THRESHOLD:J = 0x10500000014L

.field public static final blacklist DYNAMIC_BATTERY_SAVER_ENABLED:J = 0x10800000016L

.field public static final blacklist DYNAMIC_DISABLE_THRESHOLD:J = 0x10500000015L

.field public static final blacklist ENABLED:J = 0x10800000001L

.field public static final blacklist IS_ADAPTIVE_ENABLED:J = 0x1080000000fL

.field public static final blacklist IS_BATTERY_LEVEL_LOW:J = 0x10800000008L

.field public static final blacklist IS_FULL_ENABLED:J = 0x1080000000eL

.field public static final blacklist IS_POWERED:J = 0x10800000006L

.field public static final blacklist LAST_ADAPTIVE_BATTERY_SAVER_CHANGED_EXTERNALLY_ELAPSED:J = 0x10300000011L

.field public static final blacklist SETTINGS_LOADED:J = 0x10800000003L

.field public static final blacklist SETTING_AUTOMATIC_TRIGGER:J = 0x10e00000013L

.field public static final blacklist SETTING_BATTERY_SAVER_ENABLED:J = 0x10800000009L

.field public static final blacklist SETTING_BATTERY_SAVER_ENABLED_STICKY:J = 0x1080000000aL

.field public static final blacklist SETTING_BATTERY_SAVER_STICKY_AUTO_DISABLE_ENABLED:J = 0x1080000000cL

.field public static final blacklist SETTING_BATTERY_SAVER_STICKY_AUTO_DISABLE_THRESHOLD:J = 0x1050000000dL

.field public static final blacklist SETTING_BATTERY_SAVER_TRIGGER_THRESHOLD:J = 0x1050000000bL

.field public static final blacklist SHOULD_ADVERTISE_IS_ENABLED:J = 0x10800000010L

.field public static final blacklist STATE:J = 0x10e00000012L

.field public static final blacklist STATE_AUTOMATIC_ON:I = 0x3

.field public static final blacklist STATE_MANUAL_ON:I = 0x2

.field public static final blacklist STATE_OFF:I = 0x1

.field public static final blacklist STATE_OFF_AUTOMATIC_SNOOZED:I = 0x4

.field public static final blacklist STATE_PENDING_STICKY_ON:I = 0x5

.field public static final blacklist STATE_UNKNOWN:I = 0x0

.field public static final blacklist TRIGGER_DYNAMIC:I = 0x1

.field public static final blacklist TRIGGER_PERCENTAGE:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
