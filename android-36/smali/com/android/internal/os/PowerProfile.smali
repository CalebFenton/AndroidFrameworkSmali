.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;,
        Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;,
        Lcom/android/internal/os/PowerProfile$Subsystem;,
        Lcom/android/internal/os/PowerProfile$PowerGroup;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTR_NAME:Ljava/lang/String; = "name"

.field private static final greylist-max-o CPU_CLUSTER_POWER_COUNT:Ljava/lang/String; = "cpu.cluster_power.cluster"

.field private static final greylist-max-o CPU_CORE_POWER_PREFIX:Ljava/lang/String; = "cpu.core_power.cluster"

.field private static final greylist-max-o CPU_CORE_SPEED_PREFIX:Ljava/lang/String; = "cpu.core_speeds.cluster"

.field private static final greylist-max-o CPU_PER_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field private static final blacklist CPU_POWER_BRACKETS_PREFIX:Ljava/lang/String; = "cpu.power_brackets.policy"

.field private static final blacklist CPU_SCALING_POLICY_POWER_POLICY:Ljava/lang/String; = "cpu.scaling_policy_power.policy"

.field private static final blacklist CPU_SCALING_STEP_POWER_POLICY:Ljava/lang/String; = "cpu.scaling_step_power.policy"

.field public static final greylist-max-o POWER_AMBIENT_DISPLAY:Ljava/lang/String; = "ambient.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_AUDIO:Ljava/lang/String; = "audio"

.field public static final greylist-max-o POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final greylist-max-o POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final greylist POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist POWER_BRACKETS_UNSPECIFIED:I = -0x1

.field public static final greylist-max-o POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final greylist POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final greylist POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final greylist-max-o POWER_CPU_SUSPEND:Ljava/lang/String; = "cpu.suspend"

.field public static final greylist-max-o POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final greylist POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final greylist-max-o POWER_GPS_OPERATING_VOLTAGE:Ljava/lang/String; = "gps.voltage"

.field public static final greylist-max-o POWER_GPS_SIGNAL_QUALITY_BASED:Ljava/lang/String; = "gps.signalqualitybased"

.field public static final blacklist POWER_GROUP_DISPLAY_AMBIENT:Ljava/lang/String; = "ambient.on.display"

.field public static final blacklist POWER_GROUP_DISPLAY_SCREEN_FULL:Ljava/lang/String; = "screen.full.display"

.field public static final blacklist POWER_GROUP_DISPLAY_SCREEN_ON:Ljava/lang/String; = "screen.on.display"

.field public static final greylist-max-o POWER_MEMORY:Ljava/lang/String; = "memory.bandwidths"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_IDLE:Ljava/lang/String; = "modem.controller.idle"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "modem.controller.voltage"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_RX:Ljava/lang/String; = "modem.controller.rx"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_SLEEP:Ljava/lang/String; = "modem.controller.sleep"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_TX:Ljava/lang/String; = "modem.controller.tx"

.field public static final greylist POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final greylist POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final greylist POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final greylist POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_VIDEO:Ljava/lang/String; = "video"

.field public static final greylist POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final greylist-max-o POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_TX_LEVELS:Ljava/lang/String; = "wifi.controller.tx_levels"

.field public static final greylist POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final greylist POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final blacklist SUBSYSTEM_FIELDS_MASK:J = -0x1L

.field private static final blacklist SUBSYSTEM_MASK:J = 0xf00000000L

.field public static final blacklist SUBSYSTEM_MODEM:J = 0x100000000L

.field public static final blacklist SUBSYSTEM_NONE:J = 0x0L

.field public static final blacklist TAG:Ljava/lang/String; = "PowerProfile"

.field private static final greylist-max-o TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final greylist-max-o TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final greylist-max-o TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final greylist-max-o TAG_ITEM:Ljava/lang/String; = "item"

.field private static final blacklist TAG_MODEM:Ljava/lang/String; = "modem"

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field static final blacklist sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

.field static final greylist-max-o sPowerArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o sPowerItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

.field private blacklist mCpuPowerBracketCount:I

.field private blacklist mCpuScalingPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNumDisplays:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    .line 311
    new-instance v0, Lcom/android/internal/power/ModemPowerProfile;

    invoke-direct {v0}, Lcom/android/internal/power/ModemPowerProfile;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    .line 321
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initLocked()V

    .line 329
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;Z)V

    .line 336
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forTest"    # Z

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    if-eqz p2, :cond_c

    const v1, 0x1170017

    goto :goto_f

    .line 346
    :cond_c
    const v1, 0x1170016

    :goto_f
    nop

    .line 347
    .local v1, "xmlId":I
    :try_start_10
    invoke-direct {p0, p1, v1}, Lcom/android/internal/os/PowerProfile;->initLocked(Landroid/content/Context;I)V

    .line 348
    .end local v1    # "xmlId":I
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static blacklist getDefaultValuesFromConfig(Landroid/content/res/Resources;)V
    .registers 9
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 465
    const v0, 0x10e0038

    const v1, 0x10e0036

    const v2, 0x10e0035

    const v3, 0x10e0037

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    .line 472
    .local v0, "configResIds":[I
    const-string v1, "bluetooth.controller.tx"

    const-string v2, "bluetooth.controller.voltage"

    const-string v3, "bluetooth.controller.idle"

    const-string v4, "bluetooth.controller.rx"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "configResIdKeys":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v3, v0

    if-ge v2, v3, :cond_52

    .line 480
    aget-object v3, v1, v2

    .line 483
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3d

    .line 484
    goto :goto_4f

    .line 486
    :cond_3d
    aget v4, v0, v2

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 487
    .local v4, "value":I
    if-lez v4, :cond_4f

    .line 488
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":I
    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 491
    .end local v2    # "i":I
    :cond_52
    return-void
.end method

.method private static blacklist getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "ordinal"    # I

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleDeprecatedModemConstant(ILjava/lang/String;I)V
    .registers 10
    .param p1, "key"    # I
    .param p2, "deprecatedKey"    # Ljava/lang/String;
    .param p3, "level"    # I

    .line 862
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v0

    .line 863
    .local v0, "drain":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    .line 865
    :cond_d
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v2

    .line 866
    .local v2, "deprecatedDrain":D
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 867
    return-void
.end method

.method private greylist-max-o initCpuClusters()V
    .registers 11

    .line 502
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    const-string v1, "cpu.clusters.cores"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 503
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 504
    .local v0, "data":[Ljava/lang/Double;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 505
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_18
    array-length v2, v0

    if-ge v1, v2, :cond_6c

    .line 506
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v8, v2

    .line 507
    .local v8, "numCpusInCluster":I
    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v4, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpu.core_speeds.cluster"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu.cluster_power.cluster"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpu.core_power.cluster"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile-IA;)V

    aput-object v4, v2, v1

    .line 505
    .end local v8    # "numCpusInCluster":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 511
    .end local v0    # "data":[Ljava/lang/Double;
    .end local v1    # "cluster":I
    :cond_6c
    goto :goto_a0

    .line 513
    :cond_6d
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 514
    const/4 v0, 0x1

    .line 515
    .local v0, "numCpus":I
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 516
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    move v5, v0

    goto :goto_8f

    .line 515
    :cond_8e
    move v5, v0

    .line 518
    .end local v0    # "numCpus":I
    .local v5, "numCpus":I
    :goto_8f
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v1, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const-string v4, "cpu.core_power.cluster0"

    const/4 v6, 0x0

    const-string v2, "cpu.core_speeds.cluster0"

    const-string v3, "cpu.cluster_power.cluster0"

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile-IA;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 521
    .end local v5    # "numCpus":I
    :goto_a0
    return-void
.end method

.method private blacklist initCpuPowerBrackets()V
    .registers 11

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "anyBracketsSpecified":Z
    const/4 v1, 0x1

    .line 605
    .local v1, "allBracketsSpecified":Z
    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_a
    const-string v3, "cpu.power_brackets.policy"

    if-ltz v2, :cond_42

    .line 606
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 607
    .local v4, "policy":I
    iget-object v5, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    .line 608
    .local v5, "cpuScalingPolicyPower":Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
    iget-object v6, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->stepPower:[D

    array-length v6, v6

    .line 609
    .local v6, "steps":I
    new-array v7, v6, [I

    iput-object v7, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    .line 610
    sget-object v7, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 611
    const/4 v0, 0x1

    goto :goto_3f

    .line 613
    :cond_3e
    const/4 v1, 0x0

    .line 605
    .end local v4    # "policy":I
    .end local v5    # "cpuScalingPolicyPower":Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
    .end local v6    # "steps":I
    :goto_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 616
    .end local v2    # "i":I
    :cond_42
    if-eqz v0, :cond_4f

    if-eqz v1, :cond_47

    goto :goto_4f

    .line 617
    :cond_47
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Power brackets should be specified for all scaling policies or none"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    :cond_4f
    :goto_4f
    if-nez v1, :cond_55

    .line 622
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    .line 623
    return-void

    .line 626
    :cond_55
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    .line 627
    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_60
    if-ltz v2, :cond_d4

    .line 628
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 629
    .restart local v4    # "policy":I
    iget-object v5, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    .line 630
    .restart local v5    # "cpuScalingPolicyPower":Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
    sget-object v6, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Double;

    .line 631
    .local v6, "data":[Ljava/lang/Double;
    array-length v7, v6

    iget-object v8, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    array-length v8, v8

    if-ne v7, v8, :cond_ae

    .line 638
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_90
    array-length v8, v6

    if-ge v7, v8, :cond_ab

    .line 639
    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    .line 640
    .local v8, "bracket":I
    iget-object v9, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    aput v8, v9, v7

    .line 641
    iget v9, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    if-le v8, v9, :cond_a8

    .line 642
    iput v8, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    .line 638
    .end local v8    # "bracket":I
    :cond_a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    .line 627
    .end local v4    # "policy":I
    .end local v5    # "cpuScalingPolicyPower":Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
    .end local v6    # "data":[Ljava/lang/Double;
    .end local v7    # "j":I
    :cond_ab
    add-int/lit8 v2, v2, -0x1

    goto :goto_60

    .line 632
    .restart local v4    # "policy":I
    .restart local v5    # "cpuScalingPolicyPower":Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
    .restart local v6    # "data":[Ljava/lang/Double;
    :cond_ae
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong number of items in cpu.power_brackets.policy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 646
    .end local v2    # "i":I
    .end local v4    # "policy":I
    .end local v5    # "cpuScalingPolicyPower":Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
    .end local v6    # "data":[Ljava/lang/Double;
    :cond_d4
    iget v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    .line 647
    return-void
.end method

.method private blacklist initCpuScalingPolicies()V
    .registers 16

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "policyCount":I
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "cpu.scaling_policy_power.policy"

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 530
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 531
    nop

    .line 532
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 533
    .local v3, "policy":I
    add-int/lit8 v4, v3, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 535
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "policy":I
    :cond_32
    goto :goto_b

    .line 536
    :cond_33
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "cpu.scaling_step_power.policy"

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 538
    nop

    .line 539
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 540
    .local v4, "policy":I
    add-int/lit8 v5, v4, 0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 542
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "policy":I
    :cond_64
    goto :goto_3d

    .line 544
    :cond_65
    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez v0, :cond_d9

    .line 545
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    .line 546
    const/4 v7, 0x0

    .local v7, "policy":I
    :goto_73
    if-ge v7, v0, :cond_d7

    .line 547
    sget-object v8, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 548
    .local v8, "policyPower":Ljava/lang/Double;
    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Double;

    .line 549
    .local v9, "stepPower":[Ljava/lang/Double;
    if-nez v8, :cond_ab

    if-eqz v9, :cond_d4

    .line 551
    :cond_ab
    if-eqz v9, :cond_c0

    .line 552
    array-length v10, v9

    new-array v10, v10, [D

    .line 553
    .local v10, "primitiveStepPower":[D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_b1
    array-length v12, v9

    if-ge v11, v12, :cond_bf

    .line 554
    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 553
    add-int/lit8 v11, v11, 0x1

    goto :goto_b1

    .end local v11    # "i":I
    :cond_bf
    goto :goto_c2

    .line 557
    .end local v10    # "primitiveStepPower":[D
    :cond_c0
    new-array v10, v6, [D

    .line 559
    .restart local v10    # "primitiveStepPower":[D
    :goto_c2
    iget-object v11, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    new-instance v12, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    .line 560
    if-eqz v8, :cond_cd

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    goto :goto_ce

    :cond_cd
    move-wide v13, v1

    :goto_ce
    invoke-direct {v12, v13, v14, v10, v5}, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;-><init>(D[DLcom/android/internal/os/PowerProfile-IA;)V

    .line 559
    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    .end local v8    # "policyPower":Ljava/lang/Double;
    .end local v9    # "stepPower":[Ljava/lang/Double;
    .end local v10    # "primitiveStepPower":[D
    :cond_d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    .end local v7    # "policy":I
    :cond_d7
    goto/16 :goto_148

    .line 565
    :cond_d9
    const/4 v3, 0x0

    .line 566
    .local v3, "cpuId":I
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v7, v4

    move v8, v6

    :goto_de
    if-ge v8, v7, :cond_ea

    aget-object v9, v4, v8

    .line 567
    .local v9, "cpuCluster":Lcom/android/internal/os/PowerProfile$CpuClusterKey;
    add-int/lit8 v0, v3, 0x1

    .line 568
    iget v10, v9, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    add-int/2addr v3, v10

    .line 566
    .end local v9    # "cpuCluster":Lcom/android/internal/os/PowerProfile$CpuClusterKey;
    add-int/lit8 v8, v8, 0x1

    goto :goto_de

    .line 571
    :cond_ea
    const/4 v4, 0x1

    if-lez v0, :cond_12d

    .line 572
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    .line 573
    const/4 v1, 0x0

    .line 574
    .end local v3    # "cpuId":I
    .local v1, "cpuId":I
    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v3, v2

    :goto_f8
    if-ge v6, v3, :cond_148

    aget-object v7, v2, v6

    .line 575
    .local v7, "cpuCluster":Lcom/android/internal/os/PowerProfile$CpuClusterKey;
    iget-object v8, v7, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    .line 577
    .local v8, "clusterPower":D
    iget-object v10, v7, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    move-result v10

    .line 578
    .local v10, "numSteps":I
    if-eqz v10, :cond_11b

    .line 579
    new-array v11, v10, [D

    .line 580
    .local v11, "stepPower":[D
    const/4 v12, 0x0

    .local v12, "step":I
    :goto_10d
    if-ge v12, v10, :cond_11a

    .line 581
    iget-object v13, v7, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {p0, v13, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 580
    add-int/lit8 v12, v12, 0x1

    goto :goto_10d

    .end local v12    # "step":I
    :cond_11a
    goto :goto_11d

    .line 584
    .end local v11    # "stepPower":[D
    :cond_11b
    new-array v11, v4, [D

    .line 586
    .restart local v11    # "stepPower":[D
    :goto_11d
    iget-object v12, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    new-instance v13, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    invoke-direct {v13, v8, v9, v11, v5}, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;-><init>(D[DLcom/android/internal/os/PowerProfile-IA;)V

    invoke-virtual {v12, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 588
    iget v12, v7, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    add-int/2addr v1, v12

    .line 574
    .end local v7    # "cpuCluster":Lcom/android/internal/os/PowerProfile$CpuClusterKey;
    .end local v8    # "clusterPower":D
    .end local v10    # "numSteps":I
    .end local v11    # "stepPower":[D
    add-int/lit8 v6, v6, 0x1

    goto :goto_f8

    .line 591
    .end local v1    # "cpuId":I
    .restart local v3    # "cpuId":I
    :cond_12d
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    .line 592
    iget-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    .line 593
    const-string v9, "cpu.active"

    invoke-virtual {p0, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    new-array v4, v4, [D

    aput-wide v1, v4, v6

    invoke-direct {v8, v9, v10, v4, v5}, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;-><init>(D[DLcom/android/internal/os/PowerProfile-IA;)V

    .line 592
    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    .end local v3    # "cpuId":I
    :cond_148
    :goto_148
    return-void
.end method

.method private blacklist initDisplays()V
    .registers 12

    .line 788
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 789
    :goto_3
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 790
    const-string v2, "ambient.on.display"

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v5

    .line 789
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_de

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 792
    const-string/jumbo v6, "screen.on.display"

    invoke-virtual {p0, v6, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v7

    .line 791
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_de

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 794
    const-string/jumbo v7, "screen.full.display"

    invoke-virtual {p0, v7, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v3

    .line 793
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_34

    goto/16 :goto_de

    .line 800
    :cond_34
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string v3, "ambient.on"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 801
    .local v1, "deprecatedAmbientDisplay":Ljava/lang/Double;
    const/4 v3, 0x0

    .line 802
    .local v3, "legacy":Z
    const-string v4, " instead."

    const-string v8, "PowerProfile"

    if-eqz v1, :cond_6d

    iget v9, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v9, :cond_6d

    .line 803
    invoke-static {v2, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, "key":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ambient.on is deprecated! Use "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const/4 v3, 0x1

    .line 809
    .end local v2    # "key":Ljava/lang/String;
    :cond_6d
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string/jumbo v9, "screen.on"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 810
    .local v2, "deprecatedScreenOn":Ljava/lang/Double;
    if-eqz v2, :cond_a3

    iget v9, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v9, :cond_a3

    .line 811
    invoke-static {v6, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 812
    .local v6, "key":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "screen.on is deprecated! Use "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const/4 v3, 0x1

    .line 817
    .end local v6    # "key":Ljava/lang/String;
    :cond_a3
    sget-object v6, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string/jumbo v9, "screen.full"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    .line 818
    .local v6, "deprecatedScreenFull":Ljava/lang/Double;
    if-eqz v6, :cond_d9

    iget v9, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v9, :cond_d9

    .line 819
    invoke-static {v7, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "key":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "screen.full is deprecated! Use "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const/4 v3, 0x1

    .line 824
    .end local v0    # "key":Ljava/lang/String;
    :cond_d9
    if-eqz v3, :cond_dd

    .line 825
    iput v5, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 827
    :cond_dd
    return-void

    .line 796
    .end local v1    # "deprecatedAmbientDisplay":Ljava/lang/Double;
    .end local v2    # "deprecatedScreenOn":Ljava/lang/Double;
    .end local v3    # "legacy":Z
    .end local v6    # "deprecatedScreenFull":Ljava/lang/Double;
    :cond_de
    :goto_de
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    goto/16 :goto_3
.end method

.method private blacklist initLocked()V
    .registers 1

    .line 394
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    .line 395
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuScalingPolicies()V

    .line 396
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuPowerBrackets()V

    .line 397
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initDisplays()V

    .line 398
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initModem()V

    .line 399
    return-void
.end method

.method private blacklist initLocked(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 385
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 387
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 388
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v1, v0}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V

    .line 390
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initLocked()V

    .line 391
    return-void
.end method

.method private blacklist initModem()V
    .registers 4

    .line 837
    const-string v0, "modem.controller.sleep"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 839
    const/high16 v0, 0x10000000

    const-string v2, "modem.controller.idle"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 841
    const/high16 v0, 0x20000000

    const-string v2, "modem.controller.rx"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 844
    const/high16 v0, 0x30000000

    const-string v2, "modem.controller.tx"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 847
    const/high16 v0, 0x31000000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 850
    const/high16 v0, 0x32000000

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 853
    const/high16 v0, 0x33000000

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 856
    const/high16 v0, 0x34000000

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 859
    return-void
.end method

.method static synthetic blacklist lambda$dump$0(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 3
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 1181
    invoke-virtual {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1182
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1183
    return-void
.end method

.method static synthetic blacklist lambda$dump$1(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/Double;)V
    .registers 4
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Double;

    .line 1185
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1186
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1187
    return-void
.end method

.method private static blacklist readPowerValuesFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    .registers 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 403
    const-string v0, "item"

    const/4 v1, 0x0

    .line 404
    .local v1, "parsingArray":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v3, 0x0

    .line 408
    .local v3, "arrayName":Ljava/lang/String;
    :try_start_9
    const-string v4, "device"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 411
    :goto_e
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 413
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "element":Ljava/lang/String;
    if-nez v4, :cond_3a

    .line 445
    .end local v4    # "element":Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 446
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Double;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Double;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_2a} :catch_cc
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2a} :catch_c5
    .catchall {:try_start_9 .. :try_end_2a} :catchall_c3

    .line 453
    :cond_2a
    instance-of v0, p0, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_34

    .line 454
    move-object v0, p0

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 458
    :cond_34
    if-eqz p1, :cond_39

    .line 459
    invoke-static {p1}, Lcom/android/internal/os/PowerProfile;->getDefaultValuesFromConfig(Landroid/content/res/Resources;)V

    .line 461
    :cond_39
    return-void

    .line 416
    .restart local v4    # "element":Ljava/lang/String;
    :cond_3a
    const-string/jumbo v5, "value"

    if-eqz v1, :cond_57

    :try_start_3f
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 418
    sget-object v6, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/Double;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Double;

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const/4 v1, 0x0

    .line 421
    :cond_57
    const-string v6, "array"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_5d} :catch_cc
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_5d} :catch_c5
    .catchall {:try_start_3f .. :try_end_5d} :catchall_c3

    const-string v7, "name"

    const/4 v8, 0x0

    if-eqz v6, :cond_6c

    .line 422
    const/4 v1, 0x1

    .line 423
    :try_start_63
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 424
    invoke-interface {p0, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .end local v3    # "arrayName":Ljava/lang/String;
    .local v5, "arrayName":Ljava/lang/String;
    goto :goto_c1

    .line 425
    .end local v5    # "arrayName":Ljava/lang/String;
    .restart local v3    # "arrayName":Ljava/lang/String;
    :cond_6c
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    goto :goto_87

    .line 441
    :cond_79
    const-string v5, "modem"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 442
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v5, p0}, Lcom/android/internal/power/ModemPowerProfile;->parseFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c1

    .line 426
    :cond_87
    :goto_87
    const/4 v5, 0x0

    .line 427
    .local v5, "name":Ljava/lang/String;
    if-nez v1, :cond_8f

    invoke-interface {p0, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 428
    :cond_8f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_c0

    .line 429
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6
    :try_end_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_63 .. :try_end_9a} :catch_cc
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_9a} :catch_c5
    .catchall {:try_start_63 .. :try_end_9a} :catchall_c3

    .line 430
    .local v6, "power":Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 432
    .local v7, "value":D
    :try_start_9c
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a4} :catch_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c .. :try_end_a4} :catch_cc
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a4} :catch_c5
    .catchall {:try_start_9c .. :try_end_a4} :catchall_c3

    move-wide v7, v9

    .line 434
    goto :goto_a7

    .line 433
    :catch_a6
    move-exception v9

    .line 435
    :goto_a7
    :try_start_a7
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 436
    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c0

    .line 437
    :cond_b7
    if-eqz v1, :cond_c0

    .line 438
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a7 .. :try_end_c0} :catch_cc
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_c0} :catch_c5
    .catchall {:try_start_a7 .. :try_end_c0} :catchall_c3

    .line 441
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "power":Ljava/lang/String;
    .end local v7    # "value":D
    :cond_c0
    :goto_c0
    nop

    .line 444
    .end local v4    # "element":Ljava/lang/String;
    :goto_c1
    goto/16 :goto_e

    .line 453
    :catchall_c3
    move-exception v0

    goto :goto_d3

    .line 450
    :catch_c5
    move-exception v0

    .line 451
    .local v0, "e":Ljava/io/IOException;
    :try_start_c6
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "parsingArray":Z
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v3    # "arrayName":Ljava/lang/String;
    .end local p0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p1    # "resources":Landroid/content/res/Resources;
    throw v4

    .line 448
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "parsingArray":Z
    .restart local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v3    # "arrayName":Ljava/lang/String;
    .restart local p0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    :catch_cc
    move-exception v0

    .line 449
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "parsingArray":Z
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v3    # "arrayName":Ljava/lang/String;
    .end local p0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p1    # "resources":Landroid/content/res/Resources;
    throw v4
    :try_end_d3
    .catchall {:try_start_c6 .. :try_end_d3} :catchall_c3

    .line 453
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parsingArray":Z
    .restart local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v3    # "arrayName":Ljava/lang/String;
    .restart local p0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    :goto_d3
    instance-of v4, p0, Landroid/content/res/XmlResourceParser;

    if-eqz v4, :cond_dd

    .line 454
    move-object v4, p0

    check-cast v4, Landroid/content/res/XmlResourceParser;

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 456
    :cond_dd
    throw v0
.end method

.method private blacklist writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 1203
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1204
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 1205
    .local v3, "d":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, p3, p4, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 1204
    .end local v3    # "d":Ljava/lang/Double;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1208
    :cond_20
    return-void
.end method

.method private blacklist writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 1196
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1197
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 1199
    :cond_17
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1179
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1180
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1184
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1188
    const-string v1, "Modem values:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1190
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1, v0}, Lcom/android/internal/power/ModemPowerProfile;->dump(Ljava/io/PrintWriter;)V

    .line 1191
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1192
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 1019
    const-string v0, "cpu.suspend"

    const-wide v1, 0x10100000001L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1022
    const-string v0, "cpu.idle"

    const-wide v1, 0x10100000002L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1025
    const-string v0, "cpu.active"

    const-wide v3, 0x10100000003L

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1031
    const/4 v0, 0x0

    .local v0, "cluster":I
    :goto_1f
    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v3, v3

    if-ge v0, v3, :cond_a5

    .line 1032
    const-wide v3, 0x20b00000028L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1033
    .local v3, "token":J
    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1034
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    .line 1035
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 1034
    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 1036
    iget-object v5, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    const-wide v6, 0x10500000003L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1037
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_69
    if-ge v8, v6, :cond_7c

    aget-object v9, v5, v8

    .line 1038
    .local v9, "speed":Ljava/lang/Double;
    const-wide v10, 0x20300000004L

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 1037
    .end local v9    # "speed":Ljava/lang/Double;
    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 1040
    :cond_7c
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    :goto_8b
    if-ge v7, v6, :cond_9e

    aget-object v8, v5, v7

    .line 1041
    .local v8, "corePower":Ljava/lang/Double;
    const-wide v9, 0x20100000005L

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 1040
    .end local v8    # "corePower":Ljava/lang/Double;
    add-int/lit8 v7, v7, 0x1

    goto :goto_8b

    .line 1043
    :cond_9e
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1031
    .end local v3    # "token":J
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1f

    .line 1047
    .end local v0    # "cluster":I
    :cond_a5
    const-string/jumbo v0, "wifi.scan"

    const-wide v1, 0x10100000004L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1050
    const-string/jumbo v0, "wifi.on"

    const-wide v1, 0x10100000005L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1053
    const-string/jumbo v0, "wifi.active"

    const-wide v1, 0x10100000006L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1056
    const-string/jumbo v0, "wifi.controller.idle"

    const-wide v1, 0x10100000007L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1060
    const-string/jumbo v0, "wifi.controller.rx"

    const-wide v1, 0x10100000008L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1064
    const-string/jumbo v0, "wifi.controller.tx"

    const-wide v1, 0x10100000009L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1068
    const-string/jumbo v0, "wifi.controller.tx_levels"

    const-wide v1, 0x2010000000aL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1072
    const-string/jumbo v0, "wifi.controller.voltage"

    const-wide v1, 0x1010000000bL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1076
    const-string v0, "bluetooth.controller.idle"

    const-wide v1, 0x1010000000cL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1080
    const-string v0, "bluetooth.controller.rx"

    const-wide v1, 0x1010000000dL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1084
    const-string v0, "bluetooth.controller.tx"

    const-wide v1, 0x1010000000eL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1088
    const-string v0, "bluetooth.controller.voltage"

    const-wide v1, 0x1010000000fL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1092
    const-string v0, "modem.controller.sleep"

    const-wide v1, 0x10100000010L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1096
    const-string v0, "modem.controller.idle"

    const-wide v1, 0x10100000011L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1100
    const-string v0, "modem.controller.rx"

    const-wide v1, 0x10100000012L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1104
    const-string v0, "modem.controller.tx"

    const-wide v1, 0x20100000013L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1108
    const-string v0, "modem.controller.voltage"

    const-wide v1, 0x10100000014L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1112
    const-string v0, "gps.on"

    const-wide v1, 0x10100000015L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1115
    const-string v0, "gps.signalqualitybased"

    const-wide v1, 0x20100000016L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1119
    const-string v0, "gps.voltage"

    const-wide v1, 0x10100000017L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1123
    const-string v0, "bluetooth.on"

    const-wide v1, 0x10100000018L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1126
    const-string v0, "bluetooth.active"

    const-wide v1, 0x10100000019L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1130
    const-string v0, "bluetooth.at"

    const-wide v1, 0x1010000001aL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1134
    const-string v0, "ambient.on"

    const-wide v1, 0x1010000001bL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1137
    const-string/jumbo v0, "screen.on"

    const-wide v1, 0x1010000001cL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1140
    const-string/jumbo v0, "radio.on"

    const-wide v1, 0x1010000001dL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1143
    const-string/jumbo v0, "radio.scanning"

    const-wide v1, 0x1010000001eL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1146
    const-string/jumbo v0, "radio.active"

    const-wide v1, 0x1010000001fL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1149
    const-string/jumbo v0, "screen.full"

    const-wide v1, 0x10100000020L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1152
    const-string v0, "audio"

    const-wide v1, 0x10100000021L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1155
    const-string/jumbo v0, "video"

    const-wide v1, 0x10100000022L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1158
    const-string v0, "camera.flashlight"

    const-wide v1, 0x10100000023L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1161
    const-string v0, "memory.bandwidths"

    const-wide v1, 0x10100000024L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1164
    const-string v0, "camera.avg"

    const-wide v1, 0x10100000025L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1167
    const-string/jumbo v0, "wifi.batchedscan"

    const-wide v1, 0x10100000026L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1171
    const-string v0, "battery.capacity"

    const-wide v1, 0x10100000027L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1173
    return-void
.end method

.method public blacklist getAverageBatteryDrainMa(J)D
    .registers 5
    .param p1, "key"    # J

    .line 947
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAverageBatteryDrainOrDefaultMa(JD)D
    .registers 11
    .param p1, "key"    # J
    .param p3, "defaultValue"    # D

    .line 924
    const-wide v0, 0xf00000000L

    and-long/2addr v0, p1

    .line 925
    .local v0, "subsystemType":J
    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    .line 928
    .local v2, "subsystemFields":I
    const-wide v3, 0x100000000L

    cmp-long v3, v0, v3

    if-nez v3, :cond_1a

    .line 929
    sget-object v3, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v3

    .local v3, "value":D
    goto :goto_1c

    .line 931
    .end local v3    # "value":D
    :cond_1a
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 934
    .restart local v3    # "value":D
    :goto_1c
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_23

    return-wide p3

    .line 935
    :cond_23
    return-wide v3
.end method

.method public greylist getAveragePower(Ljava/lang/String;)D
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 910
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getAveragePower(Ljava/lang/String;I)D
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 961
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 962
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 963
    :cond_15
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_44

    .line 964
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 965
    .local v0, "values":[Ljava/lang/Double;
    array-length v3, v0

    if-le v3, p2, :cond_33

    if-ltz p2, :cond_33

    .line 966
    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 967
    :cond_33
    if-ltz p2, :cond_43

    array-length v3, v0

    if-nez v3, :cond_39

    goto :goto_43

    .line 970
    :cond_39
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 968
    :cond_43
    :goto_43
    return-wide v1

    .line 973
    .end local v0    # "values":[Ljava/lang/Double;
    :cond_44
    return-wide v1
.end method

.method public greylist-max-o getAveragePowerForCpuCluster(I)D
    .registers 4
    .param p1, "cluster"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 746
    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-ge p1, v0, :cond_12

    .line 747
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 749
    :cond_12
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getAveragePowerForCpuCore(II)D
    .registers 5
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-ge p1, v0, :cond_12

    .line 758
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0

    .line 760
    :cond_12
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getAveragePowerForCpuScalingPolicy(I)D
    .registers 5
    .param p1, "policy"    # I

    .line 670
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    .line 671
    .local v0, "cpuScalingPolicyPower":Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
    if-eqz v0, :cond_d

    .line 672
    iget-wide v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->policyPower:D

    return-wide v1

    .line 674
    :cond_d
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist getAveragePowerForCpuScalingStep(II)D
    .registers 6
    .param p1, "policy"    # I
    .param p2, "step"    # I

    .line 683
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    .line 684
    .local v0, "cpuScalingPolicyPower":Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
    if-eqz v0, :cond_16

    if-ltz p2, :cond_16

    iget-object v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->stepPower:[D

    array-length v1, v1

    if-ge p2, v1, :cond_16

    .line 686
    iget-object v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->stepPower:[D

    aget-wide v1, v1, p2

    return-wide v1

    .line 688
    :cond_16
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist getAveragePowerForOrdinal(Ljava/lang/String;I)D
    .registers 5
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .line 1000
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAveragePowerForOrdinal(Ljava/lang/String;ID)D
    .registers 8
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "ordinal"    # I
    .param p3, "defaultValue"    # D

    .line 988
    invoke-static {p1, p2}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    return-wide v1
.end method

.method public greylist-max-o getAveragePowerOrDefault(Ljava/lang/String;D)D
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 893
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 894
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 895
    :cond_15
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 896
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 898
    :cond_2d
    return-wide p2
.end method

.method public greylist getBatteryCapacity()D
    .registers 3

    .line 1011
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCpuPowerBracketCount()I
    .registers 2

    .line 768
    iget v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    return v0
.end method

.method public blacklist getCpuPowerBracketForScalingStep(II)I
    .registers 5
    .param p1, "policy"    # I
    .param p2, "step"    # I

    .line 776
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    .line 777
    .local v0, "cpuScalingPolicyPower":Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
    if-eqz v0, :cond_16

    if-ltz p2, :cond_16

    iget-object v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    array-length v1, v1

    if-ge p2, v1, :cond_16

    .line 779
    iget-object v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    aget v1, v1, p2

    return v1

    .line 781
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o getNumCoresInCpuCluster(I)I
    .registers 3
    .param p1, "cluster"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 720
    if-ltz p1, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_f

    .line 723
    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    return v0

    .line 721
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getNumCpuClusters()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    return v0
.end method

.method public blacklist getNumDisplays()I
    .registers 2

    .line 833
    iget v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    return v0
.end method

.method public greylist-max-o getNumElements(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 876
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 877
    const/4 v0, 0x1

    return v0

    .line 878
    :cond_a
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 879
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 881
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getNumSpeedStepsInCpuCluster(I)I
    .registers 4
    .param p1, "cluster"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 732
    if-ltz p1, :cond_28

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_28

    .line 735
    :cond_8
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 736
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 738
    :cond_26
    const/4 v0, 0x1

    return v0

    .line 733
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initForTesting(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;->initForTesting(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V

    .line 358
    return-void
.end method

.method public blacklist initForTesting(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 367
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 369
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 370
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/power/ModemPowerProfile;->clear()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_31

    .line 373
    :try_start_12
    invoke-static {p1, p2}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_24

    .line 375
    :try_start_15
    instance-of v1, p1, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_1f

    .line 376
    move-object v1, p1

    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 379
    :cond_1f
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initLocked()V

    .line 380
    monitor-exit v0

    .line 381
    return-void

    .line 375
    :catchall_24
    move-exception v1

    instance-of v2, p1, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_2f

    .line 376
    move-object v2, p1

    check-cast v2, Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 378
    :cond_2f
    nop

    .end local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "resources":Landroid/content/res/Resources;
    throw v1

    .line 380
    .restart local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "resources":Landroid/content/res/Resources;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_31

    throw v1
.end method
