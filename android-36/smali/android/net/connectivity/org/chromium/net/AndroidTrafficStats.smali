.class public Landroid/net/connectivity/org/chromium/net/AndroidTrafficStats;
.super Ljava/lang/Object;
.source "AndroidTrafficStats.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net::android::traffic_stats"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getCurrentUidRxBytes()J
    .registers 4

    .line 60
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 61
    .local v0, "bytes":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    move-wide v2, v0

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    :goto_12
    return-wide v2
.end method

.method private static blacklist getCurrentUidTxBytes()J
    .registers 4

    .line 48
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 49
    .local v0, "bytes":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    move-wide v2, v0

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    :goto_12
    return-wide v2
.end method

.method private static blacklist getTotalRxBytes()J
    .registers 4

    .line 36
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 37
    .local v0, "bytes":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    move-wide v2, v0

    goto :goto_e

    :cond_c
    const-wide/16 v2, 0x0

    :goto_e
    return-wide v2
.end method

.method private static blacklist getTotalTxBytes()J
    .registers 4

    .line 25
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    .line 26
    .local v0, "bytes":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    move-wide v2, v0

    goto :goto_e

    :cond_c
    const-wide/16 v2, 0x0

    :goto_e
    return-wide v2
.end method
