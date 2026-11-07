.class public final Lcom/android/internal/os/PowerProfileProto;
.super Ljava/lang/Object;
.source "PowerProfileProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfileProto$CpuCluster;
    }
.end annotation


# static fields
.field public static final blacklist AMBIENT_DISPLAY:J = 0x1010000001bL

.field public static final blacklist AUDIO:J = 0x10100000021L

.field public static final blacklist BATTERY_CAPACITY:J = 0x10100000027L

.field public static final blacklist BLUETOOTH_ACTIVE:J = 0x10100000019L

.field public static final blacklist BLUETOOTH_AT_CMD:J = 0x1010000001aL

.field public static final blacklist BLUETOOTH_CONTROLLER_IDLE:J = 0x1010000000cL

.field public static final blacklist BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:J = 0x1010000000fL

.field public static final blacklist BLUETOOTH_CONTROLLER_RX:J = 0x1010000000dL

.field public static final blacklist BLUETOOTH_CONTROLLER_TX:J = 0x1010000000eL

.field public static final blacklist BLUETOOTH_ON:J = 0x10100000018L

.field public static final blacklist CAMERA:J = 0x10100000025L

.field public static final blacklist CPU_ACTIVE:J = 0x10100000003L

.field public static final blacklist CPU_CLUSTER:J = 0x20b00000028L

.field public static final blacklist CPU_IDLE:J = 0x10100000002L

.field public static final blacklist CPU_SUSPEND:J = 0x10100000001L

.field public static final blacklist FLASHLIGHT:J = 0x10100000023L

.field public static final blacklist GPS_ON:J = 0x10100000015L

.field public static final blacklist GPS_OPERATING_VOLTAGE:J = 0x10100000017L

.field public static final blacklist GPS_SIGNAL_QUALITY_BASED:J = 0x20100000016L

.field public static final blacklist MEMORY:J = 0x10100000024L

.field public static final blacklist MODEM_CONTROLLER_IDLE:J = 0x10100000011L

.field public static final blacklist MODEM_CONTROLLER_OPERATING_VOLTAGE:J = 0x10100000014L

.field public static final blacklist MODEM_CONTROLLER_RX:J = 0x10100000012L

.field public static final blacklist MODEM_CONTROLLER_SLEEP:J = 0x10100000010L

.field public static final blacklist MODEM_CONTROLLER_TX:J = 0x20100000013L

.field public static final blacklist RADIO_ACTIVE:J = 0x1010000001fL

.field public static final blacklist RADIO_ON:J = 0x1010000001dL

.field public static final blacklist RADIO_SCANNING:J = 0x1010000001eL

.field public static final blacklist SCREEN_FULL:J = 0x10100000020L

.field public static final blacklist SCREEN_ON:J = 0x1010000001cL

.field public static final blacklist VIDEO:J = 0x10100000022L

.field public static final blacklist WIFI_ACTIVE:J = 0x10100000006L

.field public static final blacklist WIFI_BATCHED_SCAN:J = 0x10100000026L

.field public static final blacklist WIFI_CONTROLLER_IDLE:J = 0x10100000007L

.field public static final blacklist WIFI_CONTROLLER_OPERATING_VOLTAGE:J = 0x1010000000bL

.field public static final blacklist WIFI_CONTROLLER_RX:J = 0x10100000008L

.field public static final blacklist WIFI_CONTROLLER_TX:J = 0x10100000009L

.field public static final blacklist WIFI_CONTROLLER_TX_LEVELS:J = 0x2010000000aL

.field public static final blacklist WIFI_ON:J = 0x10100000005L

.field public static final blacklist WIFI_SCAN:J = 0x10100000004L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
