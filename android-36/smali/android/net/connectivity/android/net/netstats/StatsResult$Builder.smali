.class public final Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
.super Ljava/lang/Object;
.source "StatsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/netstats/StatsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist rxBytes:J

.field private blacklist rxPackets:J

.field private blacklist txBytes:J

.field private blacklist txPackets:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->rxBytes:J

    .line 28
    iput-wide v0, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->rxPackets:J

    .line 33
    iput-wide v0, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->txBytes:J

    .line 38
    iput-wide v0, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->txPackets:J

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 10

    .line 44
    new-instance v0, Landroid/net/connectivity/android/net/netstats/StatsResult;

    iget-wide v1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->rxBytes:J

    iget-wide v3, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->rxPackets:J

    iget-wide v5, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->txBytes:J

    iget-wide v7, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->txPackets:J

    invoke-direct/range {v0 .. v8}, Landroid/net/connectivity/android/net/netstats/StatsResult;-><init>(JJJJ)V

    return-object v0
.end method

.method public blacklist setRxBytes(J)Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
    .registers 3
    .param p1, "rxBytes"    # J

    .line 25
    iput-wide p1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->rxBytes:J

    .line 26
    return-object p0
.end method

.method public blacklist setRxPackets(J)Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
    .registers 3
    .param p1, "rxPackets"    # J

    .line 30
    iput-wide p1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->rxPackets:J

    .line 31
    return-object p0
.end method

.method public blacklist setTxBytes(J)Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
    .registers 3
    .param p1, "txBytes"    # J

    .line 35
    iput-wide p1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->txBytes:J

    .line 36
    return-object p0
.end method

.method public blacklist setTxPackets(J)Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
    .registers 3
    .param p1, "txPackets"    # J

    .line 40
    iput-wide p1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->txPackets:J

    .line 41
    return-object p0
.end method
